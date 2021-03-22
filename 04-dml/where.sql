# Consulta con una condición #
SELECT * FROM usuarios WHERE email = 'lukas@utem.cl';

/*
Operador de comparación
Igual:          =
Distinto:       !=
Menor:          <
Mayor:          >
Menor o igual:  <=
Mayor o igual:  >=
Entre:          between A and B
En:             in
Es nulo:        is null
No nulo:        is not null
Como:           like
No es como:     not like
*/

/*
Operadores lógicos
O   OR
Y   AND
NO  NOT
*/

/*
Comodines:
Cualquier cantidad de caracteres:   %
Caracter desconocido:               _
*/

# Nombre y apellidos de todos los usuarios registrados en 2021
SELECT nombre, apellidos FROM usuarios WHERE YEAR(fecha) = 2021;

# Nombre y apellidos de todos los usuarios que no se registraron en 2020
SELECT nombre, apellidos FROM usuarios WHERE YEAR(fecha) != 2020 OR ISNULL(fecha);

# Mostrar email de usuarios cuyos apellidos contengan letra V y su contraseña sea 1234 #
SELECT email FROM usuarios WHERE apellidos LIKE '%v%' AND password = '1234';

# Mostrar registros de la tabla usuarios cuyo año sea impar #
SELECT * FROM usuarios WHERE (YEAR(fecha)%2 != 0);

# Mostrar registros de usuarios cuyos nombres tengan mas de 5 letras y que se hayan registrado antes de 2022 #
SELECT UPPER(nombre) AS 'Nombre', apellidos FROM usuarios WHERE (LENGTH(nombre) > 5 AND (YEAR(fecha) < 2022));
SELECT id, UPPER(nombre) AS 'Nombre', apellidos FROM usuarios WHERE (LENGTH(nombre) > 5 AND (YEAR(fecha) < 2022));

SELECT * FROM usuarios ORDER BY id ASC;

SELECT * FROM usuarios LIMIT 3;
SELECT * FROM usuarios LIMIT 1,4;
