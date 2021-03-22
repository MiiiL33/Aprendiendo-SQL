/* 
Mostrar clientes que han hecho pedido del auto "Ranchera"
 */

SELECT * FROM clientes WHERE id IN
(SELECT cliente_id FROM pedidos WHERE auto_id
    IN (SELECT id FROM autos WHERE modelo LIKE '%Ranchera%'));
