# Insertar nuevos registros #
INSERT INTO usuarios VALUES(null, 'Lukas', 'Avila', 'lukas@utem.cl', '1234', '2021-02-02');
INSERT INTO usuarios VALUES(null, 'Ignacio', 'Acevedo', 'ignacio@utem.cl', '1234', '2021-02-02');
INSERT INTO usuarios VALUES(null, 'José', 'Villavicencio', 'jose@utem.cl', '1234', '2021-02-02');
INSERT INTO usuarios VALUES(null, 'Nicolás', 'Arenas', 'jesus@utem.cl', '1234', '2021-02-02');

# Insertar filas solo con ciertas columnas #
INSERT INTO usuarios(email, password) VALUES('admin', '1234')
