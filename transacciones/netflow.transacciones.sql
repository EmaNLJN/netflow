USE netflow;

-- Transaccion para la eliminacion de los registros [8,9,10] 
START TRANSACTION;
DELETE FROM historial_conexiones WHERE id = 8;
DELETE FROM historial_conexiones WHERE id = 9;
DELETE FROM historial_conexiones WHERE id = 10;
-- ROLLBACK;
COMMIT; 

-- Reinserción de valores borrados previamente en la transaccion.
-- INSERT INTO historial_conexiones VALUES(8, '02-BB-0B-72-92-75', 8, '2022-02-06 16:59:07', '2022-02-07 02:22:50');
-- INSERT INTO historial_conexiones VALUES(9, '53-E8-4F-D8-9D-A0', 2, '2022-02-05 09:03:55', '2022-02-06 02:23:35');
-- INSERT INTO historial_conexiones VALUES(10, '40-C8-78-6B-74-60', 9, '2022-02-04 02:34:51', '2022-02-04 11:54:52');

-- Transaccion para la insercion de episodios
START TRANSACTION;
INSERT INTO episodios VALUES (NULL, "The One With The Jellyfish", 24);
INSERT INTO episodios VALUES (NULL, "The One With The Cat", 24);
INSERT INTO episodios VALUES (NULL, "The One With The 'Cuffs", 24);
INSERT INTO episodios VALUES (NULL, "The One With The Ballroom Dancing", 24);
SAVEPOINT episodios_friends_1_4;
INSERT INTO episodios VALUES (NULL, "The One With Joey's New Girlfriend", 24);
INSERT INTO episodios VALUES (NULL, "The One With The Dirty Girl", 24);
INSERT INTO episodios VALUES (NULL, "The One Where Chandler Crosses The Line", 24);
INSERT INTO episodios VALUES (NULL, "The One With Chandler In A Box", 24);
SAVEPOINT episodios_friends_4_8;
-- RELEASE SAVEPOINT episodios_friends_1_4;
-- ROLLBACK;
COMMIT;