# Renomrando tabla #
ALTER TABLE usuarios RENAME TO usuarios_renom;

# Renombrando columna #
ALTER TABLE usuarios_renom CHANGE apellidos apellido varchar(100) null;

# Modificar columna sin cambiar nombre #
ALTER TABLE usuarios_renom MODIFY apellido char(50) not null;

# Añadir columna #
ALTER TABLE usuarios_renom ADD website varchar(100) null;

# Añadir restricción a columna #
ALTER TABLE usuarios_renom ADD CONSTRAINT uq_email UNIQUE(email);

# Borrar una columna #
ALTER TABLE usuarios_renom DROP website;

# Cambiar el id autoincrementable al valor 'auto_increment'
ALTER TABLE usuarios auto_increment=10;