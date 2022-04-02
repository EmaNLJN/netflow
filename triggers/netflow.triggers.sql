USE netflow;

-- NOTA: Ejecutar primero el archivo netflow.triggers.tablas.sql

-- Este trigger se encarga de validar todas las conexiones permitidas para el usuario dependiendo de su plan.
-- primer condicional: al ingresar un nuevo registro, la columna creacion no deberia ser mayor que la actualizacion del mismo.
-- segundo condicional: agrega un nuevo registro si y solo si el limite de dispositivos vinculados al usuario no ha sido alcanzado.
-- tercer condicional: chequea que el mac sea valido dependiendo del formato.
DELIMITER #
CREATE TRIGGER validar_historial_conexiones
BEFORE INSERT on historial_conexiones
FOR EACH ROW
BEGIN
	DECLARE MSG VARCHAR(225);
    SET @C_CONEXIONES = CURR_CONEXIONES(new.usuarios_id) + 1;
    SET @USUARIO_PLAN = (SELECT planes_id FROM usuarios WHERE id = new.usuarios_id);
    SET @D_CONEXIONES = DISP_CONEXIONES(@USUARIO_PLAN);
    
    IF new.created_at > new.updated_at THEN
		SET MSG = CONCAT("la fecha de creacion no puede ser mayor que la de la actualizacion");
        SIGNAL SQLSTATE "45000"
			SET MESSAGE_TEXT = MSG;
    END IF;
    
    -- este caso depende mucho de la consistencia de los datos. Probarlo usando la vista conexiones_permitidas_usuarios.
    IF @C_CONEXIONES > @D_CONEXIONES THEN
		SET MSG = CONCAT("El usuario con id ", new.usuarios_id, " ya alcanzo el limite de conexiones disponibles para su plan.");
		SIGNAL SQLSTATE "45000"
            SET MESSAGE_TEXT = MSG;
    END IF;
    
    IF new.mac_address NOT REGEXP '^([a-zA-Z-0-9]{2})-([a-zA-Z-0-9]{2})-([a-zA-Z-0-9]{2})-([a-zA-Z-0-9]{2})-([a-zA-Z-0-9]{2})-([a-zA-Z-0-9]{2})$' THEN
		SET MSG = CONCAT("La direccion mac no es valida.");
		SIGNAL SQLSTATE "45000"
			SET MESSAGE_TEXT = MSG;
    END IF;
END#

-- Este trigger se encarga de agregar un registro dentro de la tabla log_historial_conexiones
-- Estructura de como se guarda en el log: usuario_id | tipo de accion | direccion mac | fecha
DELIMITER #
CREATE TRIGGER log_historial_conexiones
AFTER INSERT ON historial_conexiones
FOR EACH ROW
BEGIN
    INSERT INTO log_historial_conexiones(usuarios_id, tipo, mac_address, fecha) 
		VALUES (new.usuarios_id, 'INSERT', new.mac_address, NOW());
END#

-- Este trigger se encarga de validar los datos que ingresan en planes
-- primer condicional: los dispositivos ni el precio deben ser cero.
DELIMITER #
CREATE TRIGGER validar_planes
BEFORE INSERT ON planes
FOR EACH ROW
BEGIN
	DECLARE MSG VARCHAR(225);
    IF new.available_devices = 0 OR new.price = 0 THEN
		SET MSG = CONCAT("available_devices o price son cero.");
        SIGNAL SQLSTATE "45000"
			SET MESSAGE_TEXT = MSG;
    END IF;
END#

-- Este trigger se encarga de agregar un registro dentro de la tabla log_planes
-- Estructura de como se guarda en el log: id | nombre de plan | tipo de accion | fecha
DELIMITER #
CREATE TRIGGER log_planes
AFTER INSERT ON planes
FOR EACH ROW
BEGIN
    INSERT INTO log_planes(planes_id, name, tipo, fecha) VALUES (new.id, new.name, 'INSERT', NOW());
END#

-- CASOS QUE FALLAN POR LAS VALIDACIONES
-- INSERT INTO planes(name, available_devices, price) VALUES ("Plan que falla", 0, 0);
-- INSERT INTO historial_conexiones(mac_address, usuarios_id, created_at, updated_at) VALUES ('TEST QUE FALLA', 1, NOW() + 1, NOW());
-- INSERT INTO historial_conexiones(mac_address, usuarios_id, created_at, updated_at) VALUES ('1234', 1, NOW(), NOW());