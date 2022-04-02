USE netflow;

-- Vista para monitorear si el usuario posee el limite indicado de conexiones por cuenta
CREATE VIEW conexiones_permitidas_usuarios AS
    SELECT 
        u.name 'Usuarios',
        COUNT(hc.id) AS 'Conexiones Actuales',
        p.available_devices AS 'Conexiones Permitidas'
    FROM
        historial_conexiones hc
            INNER JOIN
        usuarios u ON u.id = hc.usuarios_id
            INNER JOIN
        planes p ON p.id = u.planes_id
    GROUP BY u.name , p.available_devices;

-- Vista para la informacion de las peliculas
CREATE VIEW info_peliculas AS
    SELECT 
        p.name AS 'Nombre',
        p.release_date AS 'Fecha de lanzamiento',
        ce.name AS 'Clasificacion',
        GROUP_CONCAT(c.name) AS 'Categorias'
    FROM
        peliculas_catalogos pc
            INNER JOIN
        peliculas p ON pc.peliculas_id = p.id
            INNER JOIN
        catalogos c ON pc.catalogos_id = c.id
            INNER JOIN
        clasificacion_edades ce ON ce.id = p.clasificacion_edades_id
    GROUP BY p.id
    ORDER BY p.release_date;

-- Vista para mostrar todos los catalogos disponibles por pais
CREATE VIEW pais_catalogos AS
    SELECT 
        p.name AS 'Pais', GROUP_CONCAT(c.name) AS 'Catalogos'
    FROM
        paises p
            INNER JOIN
        catalogos c ON p.catalogos_id = c.id
    GROUP BY p.name;
    
-- Vista que muestra la cantidad temporadas y episodios de las series ( agregados al sistema )
CREATE VIEW series_total_temporadas_series AS
    SELECT 
        s.name AS 'Series',
        COUNT(*) AS 'Temporadas',
        SUM(t.cant_episodios) 'Episodios'
    FROM
        series s
            INNER JOIN
        (SELECT 
            t.id, t.series_id, t.name, COUNT(e.id) AS cant_episodios
        FROM
            episodios e
        RIGHT JOIN temporadas t ON t.id = e.temporadas_id
        GROUP BY t.id) t ON t.series_id = s.id
    GROUP BY s.name;

-- Vista para la informacion de series
CREATE VIEW info_series AS
    SELECT 
        e.id,
        s.name AS 'Series',
        e.name AS 'Episodios',
        t.name AS 'Temporadas',
        t.release_date AS 'Fecha de lanzamiento',
        ce.name AS 'Clasificacion',
        GROUP_CONCAT(c.name) AS 'Categorias'
    FROM
        series_catalogos sc
            INNER JOIN
        catalogos c ON c.id = sc.catalogos_id
            INNER JOIN
        series s ON s.id = sc.series_id
            INNER JOIN
        temporadas t ON t.series_id = s.id
            INNER JOIN
        episodios e ON e.temporadas_id = t.id
            INNER JOIN
        clasificacion_edades ce ON ce.id = t.clasificacion_edades_id
    GROUP BY e.id
    ORDER BY t.release_date;
