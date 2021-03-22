/* 
Mostrar pedidos realizados con la marca del auto y el nombre del cliente
 */

SELECT p.id, a.marca, c.nombre FROM pedidos p
INNER JOIN autos a ON a.id = p.auto_id
INNER JOIN clientes c ON c.id = p.cliente_id;