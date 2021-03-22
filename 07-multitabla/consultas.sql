/*
Consultas multitabla: son consultas que sirven para consultar varias tablas
en una sola sentencia
*/

# Mostrar entradas con nombre de autor y nombre de categoria
SELECT e.id, e.titulo, u.nombre AS 'Autor', c.nombre AS 'Categoría'
FROM entradas e, usuarios u, categorias c
WHERE e.usuario_id = u.id AND e.categoria_id = c.id;

# Inner join
SELECT e.id, e.titulo, u.nombre AS 'Autor', c.nombre AS 'Categoría'
FROM entradas e
INNER JOIN usuarios u ON e.usuario_id = u.id
INNER JOIN categorias c ON e.categoria_id = c.id;

# La siguiente consulta muestra cada entrada tantas veces como categorias existan
SELECT e.id, e.titulo, u.nombre AS 'Autor', c.nombre AS 'Categoría'
FROM entradas e, usuarios u, categorias c
WHERE e.usuario_id = u.id;

# Mostrar nombre de las catgorías y cuantas entradas tienen
SELECT c.nombre, COUNT(e.id) as 'Total Entradas' FROM categorias c, entradas e
WHERE e.categoria_id = c.id GROUP BY e.categoria_id;

# Left Join
SELECT c.nombre, COUNT(e.id) FROM categorias c
LEFT JOIN entradas e ON e.categoria_id = c.id GROUP BY e.categoria_id;

# Right Join
SELECT c.nombre, COUNT(e.id) FROM entradas e
RIGHT JOIN categorias c ON e.categoria_id = c.id GROUP BY e.categoria_id;

# Mostrar email de usuarios y cuantas entradas tienen
SELECT u.email, COUNT(e.id) FROM usuarios u, entradas e
WHERE e.usuario_id = u.id GROUP BY e.usuario_id;

