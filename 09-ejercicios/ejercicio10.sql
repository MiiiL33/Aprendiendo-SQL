/* 
Mostrar apellidos de vendedores, fecha de ingreso y número de grupo
ordenado por fecha descendente, con un límite de los 4 últimos
 */

SELECT apellidos, fecha, grupo_id FROM vendedores ORDER BY fecha DESC LIMIT 4;