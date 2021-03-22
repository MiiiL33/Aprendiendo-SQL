/* 
Mostrar listado de nombre de los clientes con el costo de sus pedidos acumulados
 */
SELECT c.nombre, SUM(precio*cantidad) AS 'Total'
FROM clientes c
INNER JOIN pedidos p ON c.id = p.cliente_id
INNER JOIN autos a ON p.auto_id = a.id
GROUP BY c.nombre
ORDER BY 2 ASC;
