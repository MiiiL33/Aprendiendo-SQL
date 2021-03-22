/*
Subconsultas: consultas que se ejecutan dentro de otras.
Consiste en utilizar los resultados de la subconsulta para operar en la consulta principal.
Se juega con las foreign key,
*/

# Mostrar usuarios con entradas #
SELECT * FROM usuarios WHERE id IN(SELECT usuario_id FROM entradas);
SELECT usuario_id from entradas;

# Mostrar usuarios sin entradas #
SELECT * FROM usuarios WHERE id NOT IN(SELECT usuario_id FROM entradas);

# Mostrar usuarios que tengan entradas con GTA #
SELECT nombre, apellidos FROM usuarios WHERE id IN(SELECT usuario_id FROM entradas WHERE titulo LIKE '%GTA%');
SELECT * FROM entradas WHERE titulo LIKE '%GTA%';

# Mostrar entradas de la categoría acción utilizando su nombre
SELECT categoria_id, titulo FROM entradas WHERE categoria_id
    IN(SELECT id FROM categorias WHERE nombre = 'Acción');

# Mostrar categorias con más de 4 o más entradas
SELECT * FROM categorias WHERE id IN
    (SELECT categoria_id FROM entradas GROUP BY categoria_id HAVING COUNT(categoria_id)>=3);

# Mostrar usuarios que crearon una entrada un jueves
SELECT * FROM usuarios WHERE id IN
    (SELECT usuario_id FROM entradas WHERE DAYOFWEEK(fecha)=5);

# Mostrar nombre de usuario que tenga mas entradas
SELECT CONCAT(nombre, ' ', apellidos) AS 'Usuario con más entradas' FROM usuarios WHERE id IN
    (SELECT usuario_id FROM entradas GROUP BY usuario_id ORDER BY COUNT(id) DESC) LIMIT 1;

# Mostrar categorías sin entradas
SELECT * FROM categorias WHERE ID
    NOT IN(SELECT categoria_id FROM entradas);