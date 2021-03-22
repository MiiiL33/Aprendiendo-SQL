/*
Diseñar y crear la base de datos de un concesionario
*/
CREATE DATABASE IF NOT EXISTS concesionario;
USE concesionario;

CREATE TABLE autos(
id      int(10) auto_increment not null,
modelo  varchar(100) not null,
marca   varchar(50),
precio  int(20) not null,
stock   int(100) not null,
CONSTRAINT pk_autos PRIMARY KEY(id)
)ENGINE=InnoDB;

CREATE TABLE grupos(
id      int(10) auto_increment not null,
nombre  varchar(255) not null,
ciudad  varchar(255),
CONSTRAINT pk_grupos PRIMARY KEY(id)
)ENGINE=InnoDB;

CREATE TABLE vendedores(
id          int(10) auto_increment not null,
grupo_id    int(10) not null,
jefe        int(10),
nombre      varchar(100) not null,
apellidos   varchar(100),
cargo       varchar(50),
fecha       date,
sueldo      float(20, 2),
comision    float(10, 2),
CONSTRAINT pk_vendedores PRIMARY KEY(id),
CONSTRAINT fk_vendedor_grupo FOREIGN KEY(grupo_id) REFERENCES grupos(id),
CONSTRAINT fk_vendedor_jefe FOREIGN KEY(jefe) REFERENCES vendedores(id)
)ENGINE=InnoDB;

CREATE TABLE clientes(
id          int(10) auto_increment not null,
vendedor_id int(10),
nombre      varchar(150) not null,
ciudad      varchar(100),
gastado     float(50,2),
fecha       date,
CONSTRAINT pk_clientes PRIMARY KEY(id),
CONSTRAINT fk_cliente_vendedor FOREIGN KEY(vendedor_id) REFERENCES vendedores(id)
)ENGINE=InnoDB;

CREATE TABLE pedidos(
id          int(10) auto_increment not null,
cliente_id  int(10) not null,
auto_id     int(10) not null,
cantidad    int(100),
fecha       date,
CONSTRAINT pk_pedidos PRIMARY KEY(id),
CONSTRAINT fk_pedidos_cliente FOREIGN KEY(cliente_id) REFERENCES clientes(id),
CONSTRAINT fk_pedidos_auto FOREIGN KEY(auto_id) REFERENCES autos(id)
)ENGINE=InnoDB;

# Rellenando la base de datos

# Autos
INSERT INTO autos VALUES(NULL, 'Clio', 'Renault', 12000, 13);
INSERT INTO autos VALUES(NULL, 'Panda', 'Seat', 10000, 10);
INSERT INTO autos VALUES(NULL, 'Ranchera', 'Mercedes Benz', 32000, 24);
INSERT INTO autos VALUES(NULL, 'Cayene', 'Porsche', 65000, 5);
INSERT INTO autos VALUES(NULL, 'Aventador', 'Lamborghini', 170000, 2);
INSERT INTO autos VALUES(NULL, 'Spider', 'Ferrari', 245000, 80);

# Grupos
INSERT INTO grupos VALUES(NULL, 'Vendedores A', 'Santiago');
INSERT INTO grupos VALUES(NULL, 'Vendedores B', 'Santiago');
INSERT INTO grupos VALUES(NULL, 'Directores Mecánicos', 'Santiago');
INSERT INTO grupos VALUES(NULL, 'Vendedores A', 'Viña del mar');
INSERT INTO grupos VALUES(NULL, 'Vendedores B', 'Viña del mar');
INSERT INTO grupos VALUES(NULL, 'Vendedores C', 'Valparaiso');
INSERT INTO grupos VALUES(NULL, 'Vendedores A', 'Coquimbo');
INSERT INTO grupos VALUES(NULL, 'Vendedores B', 'Temuco');
INSERT INTO grupos VALUES(NULL, 'Vendedores C', 'Puerto Montt');

# Vendedores
INSERT INTO vendedores VALUES(NULL, 1, NULL, 'José', 'Villavicencio', 'Encargado de tienda', CURDATE(), 30000, 4);
INSERT INTO vendedores VALUES(NULL, 1, 1, 'Nicolás', 'Arenas', 'Ayudante de tienda', CURDATE(), 23000, 2);
INSERT INTO vendedores VALUES(NULL, 2, NULL, 'Ignacio', 'Acevedo', 'Encargado de tienda', CURDATE(), 38000, 5);
INSERT INTO vendedores VALUES(NULL, 2, 3, 'Jesús', 'De Nazaret', 'Ayudante de tienda', CURDATE(), 12000, 6);
INSERT INTO vendedores VALUES(NULL, 3, NULL, 'Matías', 'Silva', 'Mecánico jefe', CURDATE(), 50000, 2);
INSERT INTO vendedores VALUES(NULL, 4, NULL, 'Paolo', 'Urbina', 'Encargado de tienda', CURDATE(), 13000, 8);
INSERT INTO vendedores VALUES(NULL, 5, NULL, 'Catalina', 'Bustos', 'Encargado de tienda', CURDATE(), 60000, 2);
INSERT INTO vendedores VALUES(NULL, 6, NULL, 'Cristian', 'Arias', 'Encargado de tienda', CURDATE(), 80000, 1);
INSERT INTO vendedores VALUES(NULL, 6, 8, 'Rodrigo', 'Ibañez', 'Ayudante de tienda', CURDATE(), 10000, 10);

# Clientes
INSERT INTO clientes VALUES(NULL, 1, 'Construcciones ACV2', 'Santiago', 24000, CURDATE());
INSERT INTO clientes VALUES(NULL, 1, 'Jesús de Nazaret', 'Nazaret', 40000, CURDATE());
INSERT INTO clientes VALUES(NULL, 1, 'Lukas Ávila', 'Santiago', 32000, CURDATE());
INSERT INTO clientes VALUES(NULL, 1, 'David Sanhueza', 'Puerto Montt', 96000, CURDATE());
INSERT INTO clientes VALUES(NULL, 1, 'Andrónico Luksic', 'Lo Barnechea', 170000, CURDATE());
INSERT INTO clientes VALUES(NULL, 1, 'Piñera y la CTM', 'Carcel', 245000, CURDATE());


# Pedidos
INSERT INTO pedidos VALUES(NULL, 1, 1, 2, CURDATE());
INSERT INTO pedidos VALUES(NULL, 2, 2, 4, CURDATE());
INSERT INTO pedidos VALUES(NULL, 3, 3, 1, CURDATE());
INSERT INTO pedidos VALUES(NULL, 4, 3, 3, CURDATE());
INSERT INTO pedidos VALUES(NULL, 5, 5, 1, CURDATE());
INSERT INTO pedidos VALUES(NULL, 6, 6, 1, CURDATE());

select cantidad, nombre, concat(marca, ' ',modelo) as vehiculo from pedidos, clientes, autos where pedidos.cliente_id=clientes.id and pedidos.auto_id=autos.id;