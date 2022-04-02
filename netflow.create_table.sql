CREATE DATABASE netflow;
USE netflow;

CREATE TABLE planes (
    id INT NOT NULL AUTO_INCREMENT,
    name VARCHAR(255) NOT NULL,
    available_devices INT NOT NULL DEFAULT 1,
    price FLOAT NOT NULL,
    PRIMARY KEY (id)
);

CREATE TABLE usuarios (
    id INT NOT NULL AUTO_INCREMENT,
    name VARCHAR(255),
    lastname VARCHAR(255),
    login_name VARCHAR(12) NOT NULL UNIQUE,
    email VARCHAR(255) NOT NULL UNIQUE,
    password varchar(255) not null,
    planes_id INT,
    PRIMARY KEY (id),
    FOREIGN KEY (planes_id)
        REFERENCES planes (id)
);

CREATE TABLE historial_conexiones (
    id INT NOT NULL AUTO_INCREMENT,
    mac_address VARCHAR(255) NOT NULL UNIQUE,
    usuarios_id INT,
    created_at DATETIME,
    updated_at DATETIME,
    PRIMARY KEY (id),
    FOREIGN KEY (usuarios_id)
        REFERENCES usuarios (id)
);

CREATE TABLE catalogos (
    id INT NOT NULL AUTO_INCREMENT,
    name VARCHAR(255),
    PRIMARY KEY (id)
);

CREATE TABLE paises (
    id INT NOT NULL AUTO_INCREMENT,
    name VARCHAR(255),
    catalogos_id INT,
    PRIMARY KEY (id),
    FOREIGN KEY (catalogos_id)
        REFERENCES catalogos (id)
);

CREATE TABLE clasificacion_edades (
    id INT NOT NULL AUTO_INCREMENT,
    name VARCHAR(255),
    PRIMARY KEY (id)
);

CREATE TABLE peliculas (
    id INT NOT NULL AUTO_INCREMENT,
    name VARCHAR(255),
    release_date DATE,
    clasificacion_edades_id INT,
    PRIMARY KEY (id),
    FOREIGN KEY (clasificacion_edades_id)
        REFERENCES clasificacion_edades (id)
);

CREATE TABLE peliculas_catalogos (
    id INT NOT NULL AUTO_INCREMENT,
    peliculas_id INT,
    catalogos_id INT,
    PRIMARY KEY (id),
    FOREIGN KEY (peliculas_id)
        REFERENCES peliculas (id),
    FOREIGN KEY (catalogos_id)
        REFERENCES catalogos (id),
    UNIQUE KEY (peliculas_id , catalogos_id)
);

CREATE TABLE series (
    id INT NOT NULL AUTO_INCREMENT,
    name VARCHAR(255),
    PRIMARY KEY (id)
);

CREATE TABLE temporadas (
    id INT NOT NULL AUTO_INCREMENT,
    name VARCHAR(255),
    release_date DATE,
    clasificacion_edades_id INT,
    series_id INT,
    PRIMARY KEY (id),
    FOREIGN KEY (clasificacion_edades_id)
        REFERENCES clasificacion_edades (id),
    FOREIGN KEY (series_id)
        REFERENCES series (id)
);

CREATE TABLE episodios (
    id INT NOT NULL AUTO_INCREMENT,
    name VARCHAR(255),
    PRIMARY KEY (id),
    temporadas_id INT,
    FOREIGN KEY (temporadas_id)
        REFERENCES temporadas (id)
);

CREATE TABLE series_catalogos (
    id INT NOT NULL AUTO_INCREMENT,
    series_id INT,
    catalogos_id INT,
    PRIMARY KEY (id),
    FOREIGN KEY (series_id)
        REFERENCES series (id),
    FOREIGN KEY (catalogos_id)
        REFERENCES catalogos (id),
    UNIQUE KEY (series_id , catalogos_id)
);