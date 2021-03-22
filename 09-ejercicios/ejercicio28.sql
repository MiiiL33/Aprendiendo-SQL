/* 
Mostrar todos los vendedores y el número de clientes
Se deben mostrar tengan o no clientes
 */

SELECT v.nombre, v.apellidos, COUNT(c.id) AS 'Cantidad Clientes' FROM vendedores v
LEFT JOIN clientes c ON c.vendedor_id = v.id
GROUP BY v.id;
