/* 
Obtener nombres y ciudades de clientes con pedidos de 3 unidades en adelante
 */

SELECT nombre, ciudad FROM clientes WHERE id IN
(SELECT cliente_id FROM pedidos WHERE cantidad>=3);
