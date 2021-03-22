/* 
Mostrar todos los autos en cuya marca exista la letra "A" y cuyo modelo empiece por "S"
 */

SELECT * FROM autos WHERE marca LIKE '%a%' AND modelo LIKE 'S%';