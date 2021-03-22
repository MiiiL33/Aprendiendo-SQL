/* 
Mostrar los 2 clientes que más pedidos han hecho y mostrar cuantos han hecho.
 */
1.
SELECT cliente_id, COUNT(id) FROM pedidos GROUP BY cliente_id ORDER BY 2 LIMIT 2;

2.
SELECT c.nombre, COUNT(p.id) FROM pedidos p
INNER JOIN clientes c ON c.id = p.cliente_id
GROUP BY cliente_id ORDER BY 2 DESC LIMIT 2;