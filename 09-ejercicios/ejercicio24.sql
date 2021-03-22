/* 
Mostrar encargos con el nombre del auto, nombre del cliente, nombre de ciudad
 pero que solo sean de Santiago
 */

SELECT p.id, a.modelo, c.nombre, c.ciudad FROM pedidos p
INNER JOIN autos a ON a.id = p.auto_id
INNER JOIN clientes c ON c.id = p.cliente_id
WHERE c.ciudad = 'Santiago';