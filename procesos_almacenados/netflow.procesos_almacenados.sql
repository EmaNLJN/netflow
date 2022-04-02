USE netflow;

-- Maneras de uso:
-- Ordena a los usuarios dependiendo su columna, el tipo de ordenamiento es 0 para ascendente ( por defecto ), y 1 para descendiente
DELIMITER #
CREATE PROCEDURE ORDER_USUARIOS(IN COLUMNA VARCHAR(225), IN TIPO_ORDENAMIENTO BOOL)
BEGIN
	SET @ORDENAMIENTO = 0;
    SET @SQL_QUERY = CONCAT('SELECT * FROM usuarios');
    
    IF COLUMNA <> '' THEN
		SET @SQL_QUERY = CONCAT(@SQL_QUERY, ' ORDER BY ', COLUMNA);
        SET @ORDENAMIENTO = 1;
    END IF;
    IF @ORDENAMIENTO AND TIPO_ORDENAMIENTO <> 0 THEN
		SET @SQL_QUERY = CONCAT(@SQL_QUERY, ' DESC');
    END IF;
    
    PREPARE first_query FROM @SQL_QUERY;
    EXECUTE first_query;
    DEALLOCATE PREPARE first_query;
END#

-- Maneras de uso:
-- Crea un usuario en la tabla usuarios con nombre, apellido, usuario y mail.
DELIMITER #
CREATE procedure CREAR_USUARIO(IN NOMBRE VARCHAR(225), IN APELLIDO VARCHAR(225), IN USER_LOGIN VARCHAR(225), IN EMAIL VARCHAR(225))
BEGIN
	IF NOMBRE = '' OR APELLIDO = '' OR EMAIL = '' OR USER_LOGIN = '' OR EMAIL = '' THEN
		SIGNAL sqlstate '40400'
			SET MESSAGE_TEXT = "Hay campos vacios, por favor rellenar.";
    END IF;
    
    -- contraseña usando codificacion md5, y se inicia con un plan basico.
    INSERT INTO usuarios(name, lastname, login_name, email, password, planes_id)
    VALUES (NOMBRE, APELLIDO, USER_LOGIN, EMAIL, md5(CONCAT(USER_LOGIN, EMAIL)), 1);
END#

-- Probar en un script separado luego de ejecutar la creacion de los procesos almacenados
-- CALL ORDER_USUARIOS('name', 0);
-- CALL ORDER_USUARIOS('id', 1);
-- CALL CREAR_USUARIO("Juan", "Perez", "jperez", "jperez@jperez.com");
