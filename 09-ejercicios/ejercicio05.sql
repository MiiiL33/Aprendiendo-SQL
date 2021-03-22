/*
Mostrar todos los vendedores con su nombre y el número de días trabajados
*/
SELECT nombre, DATEDIFF(CURDATE(), fecha) as 'días trabajados' FROM vendedores;