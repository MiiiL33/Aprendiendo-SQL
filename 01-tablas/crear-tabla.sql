/*
int (n° cifras) entero
integer (n° cifras) entero (maximo 4294967295)
varchar (n° caracteres) string/alfanumerico (maximo 255 caracteres)
char (n° caracteres) string/alfanumerico
float (n° cifras, n° decimales) float/coma flotante
date, time, timestamp

//strings mas grandes
TEXT 65535 CARACTERES
MEDIUMTEXT 16 millones
LONGTEXT4 billones de caracteres


//enteros mas grandes
MEDIUMINT
BIGINT

*/

/*
Creando tabla
*/
CREATE TABLE usuarios(
id          int(11) auto_increment not null,
nombre      varchar(100) not null,
apellidos   varchar(255) default 'un apellido',
email       varchar(100) not null,
password    varchar(255),
CONSTRAINT pk_usuarios PRIMARY KEY (id)
);
