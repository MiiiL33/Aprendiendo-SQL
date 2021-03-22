/* 
Mostrar datos del vendedor con más antiguedad en el concesionario
 */

SELECT * FROM vendedores ORDER BY fecha ASC LIMIT 1;

/*
Obtener el autos con´más unidades vendidas
*/
SELECT * FROM autos WHERE id IN
(SELECT auto_id FROM pedidos WHERE cantidad IN
    (SELECT MAX(cantidad) FROM pedidos));