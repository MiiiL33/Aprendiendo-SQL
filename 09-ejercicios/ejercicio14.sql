/* 
Mostrar las unidades totales vendidas de cada auto a cada cliente, además del
nombre del auto, número de cliente y suma de las unidades.
 */

SELECT CONCAT(marca, ' ', modelo) AS 'Modelo', nombre, SUM(p.cantidad) AS 'Cantidades vendidas' FROM pedidos p
INNER JOIN autos a ON a.id = p.auto_id
INNER JOIN clientes c ON c.id = p.cliente_id
GROUP BY p.auto_id, p.cliente_id;