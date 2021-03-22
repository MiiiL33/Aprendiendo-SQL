# Consultas de agrupamiento
SELECT COUNT(titulo) as 'Número de entradas', categoria_id titulo FROM entradas GROUP BY categoria_id;

# Consultas de agrupamiento con condiciones
SELECT COUNT(titulo) AS 'Número de entradas', categoria_id
FROM entradas GROUP BY categoria_id HAVING COUNT(titulo) >=4;

/*
AVG     sacar la media
COUNT   Contar número de elementos
MAX     Valor máximo del grupo
MIN     Valor mínimo del grupo
SUM     Sumar todo el contenido del grupo
*/

SELECT AVG(id) AS 'Media de entradas' FROM entradas;
SELECT MAX(id) AS 'Máximo ID', titulo FROM entradas;
SELECT MIN(id) AS 'Mínimo ID', titulo FROM entradas;
SELECT SUM(id) AS 'Suma de ID', titulo FROM entradas;
