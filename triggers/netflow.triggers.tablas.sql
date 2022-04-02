CREATE TABLE log_historial_conexiones (
    id INT NOT NULL AUTO_INCREMENT,
    usuarios_id INT,
    mac_address VARCHAR(225),
    tipo ENUM('UPDATE', 'INSERT', 'DELETE'),
    fecha DATETIME,
    PRIMARY KEY (id)
);

CREATE TABLE log_planes (
    id INT NOT NULL AUTO_INCREMENT,
    planes_id INT,
    name VARCHAR(225),
    tipo ENUM('UPDATE', 'INSERT', 'DELETE'),
    fecha DATETIME,
    PRIMARY KEY (id)
);