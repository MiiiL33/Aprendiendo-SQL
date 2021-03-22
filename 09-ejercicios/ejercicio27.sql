/* 
Mostrar los nombres de clientes y cantidad de pedidos realizados
incluyendo los que no hayan hecho pedidos.
 */

SELECT c.nombre, COUNT(p.id) AS 'Cantidad Pedidos' FROM clientes c
LEFT JOIN pedidos p ON c.id = p.cliente_id
GROUP BY 1;