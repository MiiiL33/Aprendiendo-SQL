/* 
Mostrar listado de clientes (n° cliente y el nombre)
Mostrar número de vendedor y su nombre
 */

SELECT c.id, c.nombre, v.id, CONCAT(v.nombre, ' ', v.apellidos) AS 'Vendedor'
FROM clientes c, vendedores v
WHERE c.vendedor_id = v.id;