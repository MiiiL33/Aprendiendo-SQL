# Mostrar todos los registros / filas de una tabla #
SELECT email, nombre, apellidos FROM usuarios;

# Mostrar todos los campos #
SELECT * FROM usuarios;

# Operadores aritmeticos #
SELECT id, email, (id+7) AS 'operación' FROM usuarios ORDER BY id DESC;

# Funciones matemáticas #
SELECT ABS(7) AS 'Operación' FROM usuarios;

SELECT CEIL(1.23) AS 'Operación' FROM usuarios;
SELECT FLOOR(1.23) AS 'Operación' FROM usuarios;
SELECT PI() AS 'Operación' FROM usuarios;
SELECT RAND() AS 'Operación' FROM usuarios;
SELECT ROUND(7.931321, 2) AS 'Operación' FROM usuarios;
SELECT ROUND(7.931321, 5) AS 'Operación' FROM usuarios;
SELECT SQRT(7.9313) AS 'Operación' FROM usuarios;
SELECT TRUNCATE(7.9313,2) AS 'Operación' FROM usuarios;
SELECT TRUNCATE(7.9313,1) AS 'Operación' FROM usuarios;
SELECT TRUNCATE(7.9313,0) AS 'Operación' FROM usuarios;
SELECT TRUNCATE(id, 2) AS 'Operación' FROM usuarios;

# ///////////////////////////////////

SELECT UPPER(nombre) FROM usuarios;
SELECT LOWER(nombre) FROM usuarios;
SELECT CONCAT(nombre, ' ', apellidos) AS 'Conversión' FROM usuarios;
SELECT UPPER(CONCAT(nombre, ' ', apellidos)) AS 'Conversión' FROM usuarios;

SELECT LENGTH(CONCAT(nombre, ' ', apellidos)) AS 'Conversión' FROM usuarios;
SELECT email, LENGTH(CONCAT(nombre, ' ', apellidos)) AS 'Conversión' FROM usuarios;

SELECT CONCAT('     ', nombre, ' ', apellidos, '        ') AS 'Conversión' FROM usuarios;
SELECT TRIM(CONCAT('     ', nombre, ' ', apellidos, '        ')) AS 'Conversión' FROM usuarios;


# ///////////////////////////////////
SELECT fecha FROM usuarios;
SELECT email, fecha, CURDATE() AS 'Fecha Actual' FROM usuarios; # CURDATE() es la fecha actual #
SELECT email, fecha, DATEDIFF(CURDATE(), fecha) AS 'Fecha Actual' FROM usuarios; # CURDATE() es la fecha actual #
SELECT email, DAYNAME(fecha) AS 'Fecha actual' FROM USUARIOS; # DAYNAME entrega el nombre del día que se agregó el registro
SELECT email, DAYOFMONTH(fecha) AS 'Fecha actual' FROM USUARIOS; # DAYNAME entrega el nombre del día que se agregó el registro
SELECT email, DAYOFWEEK(fecha) AS 'Fecha actual' FROM USUARIOS; # DAYNAME entrega el nombre del día que se agregó el registro
SELECT email, DAYOFYEAR(fecha) AS 'Fecha actual' FROM USUARIOS; # DAYNAME entrega el nombre del día que se agregó el registro

SELECT email, MONTH(fecha) AS 'Fecha actual' FROM usuarios;
SELECT email, YEAR(fecha) AS 'Fecha actual' FROM usuarios;
SELECT email, DAY(fecha) AS 'Fecha actual' FROM usuarios;
SELECT email, HOUR(fecha) AS 'Fecha actual' FROM usuarios;
SELECT email, MINUTE(fecha) AS 'Fecha actual' FROM usuarios;
SELECT email, SECOND(fecha) AS 'Fecha actual' FROM usuarios;

SELECT email, CURTIME() AS 'Fecha actual' FROM usuarios;
SELECT email, SYSDATE() AS 'Fecha actual' FROM usuarios;
SELECT email, DATE_FORMAT(fecha, '%d-%m-%y') FROM usuarios; # 02-02-21 #    
SELECT email, DATE_FORMAT(fecha, '%D-%M-%Y') FROM usuarios; # 2nd - February - 2021 #

SELECT email, ISNULL(apellidos) FROM usuarios;
SELECT email, STRCMP('hola', 'hola') FROM usuarios;
SELECT DISTINCT USER() FROM usuarios;
SELECT DISTINCT DATABASE() FROM usuarios;
SELECT IFNULL(apellidos, 'Campo vacío') FROM usuarios;






