-- NOTA: En caso de que no se pueda ingresar desde todos aquellos usuarios con @'localhost', probar ejecutando las sentencias comentadas en lugar de las restantes.

-- Creacion de usuarios
-- CREATE USER 'netflow_visitor'@'%' IDENTIFIED BY 'visitor';
-- CREATE USER 'netflow_moderator'@'%' IDENTIFIED BY 'moderator';

-- Agregar permisos de select para los visitante
-- GRANT SELECT ON netflow.* TO 'netflow_visitor'@'%';

-- Agregar permisos de lectura, escritura y modifiacion de datos para los moderadores
-- GRANT SELECT, UPDATE, INSERT ON netflow.* TO 'netflow_moderator'@'%';

-- Creacion de usuarios
CREATE USER 'netflow_visitor'@'localhost' IDENTIFIED BY 'visitor';
CREATE USER 'netflow_moderator'@'localhost' IDENTIFIED BY 'moderator';

-- Agregar permisos de select para los visitante
GRANT SELECT ON netflow.* TO 'netflow_visitor'@'localhost';

-- Agregar permisos de lectura, escritura y modifiacion de datos para los moderadores
GRANT SELECT, UPDATE, INSERT ON netflow.* TO 'netflow_moderator'@'localhost';