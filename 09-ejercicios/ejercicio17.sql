/* 
Obtener listado de pedidos realizados por el cliente Andrónico Luksic
 */

1)
SELECT * FROM pedidos WHERE cliente_id =
(SELECT id FROM clientes WHERE nombre='Andrónico Luksic');

2)
SELECT p.id AS 'N° Pedido', cantidad, c.nombre, a.modelo, p.fecha
FROM pedidos p
INNER JOIN clientes c ON c.id = p.cliente_id
INNER JOIN autos a ON a.id = p.auto_id
WHERE p.cliente_id IN
(SELECT id FROM clientes WHERE nombre = 'Andrónico Luksic');