/* 
Sacar la media de sueldos entre todos los vendedores por grupo
*/
1.
SELECT grupo_id AS 'Grupo', AVG(sueldo) AS 'Media de sueldo' FROM vendedores
GROUP BY grupo_id;

2.
SELECT CEIL(AVG(v.sueldo)) AS 'Media de sueldo', v.grupo_id FROM vendedores v
INNER JOIN grupos g ON g.id=v.grupo_id
GROUP BY grupo_id;
