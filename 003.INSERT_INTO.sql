
/* INSERT - Insertar datos es las tablas.
Agrega nuevos registros */

-- Insertar un nuevo actor con nombre "Juan" y apellido "Lopez"

INSERT INTO actor (first_name, last_name) VALUE ('Juan', 'Lopez');
SELECT * FROM actor;

-- Insertar una actriz con nombre "Maria" y apellido "Garcia"
INSERT INTO actor (first_name, last_name) VALUE ('Maria', 'Garcia');

/* Cuando se inserta los valores en todas las columnas, se pueden omitir
el nombre de las columnas. Solo se va agregando el contenido de la fila en orden*/
INSERT INTO actor VALUES (203, 'Roberto', 'Garza', '2020-10-10 22:22:22');

-- Insertar en la tabla "category" una nueva categoría.
-- dos filas, una con el id autogenerado, y una con id dado

SELECT * FROM category;
INSERT INTO category (name) VALUE ('thriller spsicologico');
INSERT INTO category VALUES (18, 'Gore', '2023-11-20 12:50:50');

-- Inserta 4 registros/filas de actores , solo agregando nombre y apellido

INSERT INTO actor (first_name, last_name) 
VALUES ('Lucia', 'Lopez'), 
('Marcos', 'Tellez'),
 ('Luis', 'Estrada'),
 ('Fernanda', 'Olivera');
 
 SELECT * FROM actor;









