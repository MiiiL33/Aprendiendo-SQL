/* 
Obtener listado de clientes atendidos por vendedor 'Paolo Urbina'
 */
SELECT * FROM clientes WHERE vendedor_id IN
(SELECT id FROM vendedores WHERE nombre = 'José' AND apellidos = 'Villavicencio');
