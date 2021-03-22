/* 
Mostrar nombre y apellidos de vendedores en una misma columna
y su fecha de registro y qué dia de la semana que se ha registrado
 */
SELECT CONCAT(nombre, ' ',  apellidos) AS 'Nombre Vendedor', fecha, DAYNAME(fecha) FROM vendedores;