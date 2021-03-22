/* 
Mostrar cargos de vendedores y el número de vendedores que hay en cada cargo
*/

SELECT cargo, COUNT(id) FROM vendedores GROUP BY cargo ORDER BY COUNT(id) DESC;