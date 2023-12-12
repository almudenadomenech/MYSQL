-- Crear base de datos biblioteca

create database if not exists biblioteca;
use biblioteca;

-- Asociciación ONE-TO-ONE
-- tabla de usuarios
create table usuario(
usuario_id int auto_increment primary key,
nombre varchar(50) not null,
apellido varchar(50) not null,
email varchar(100) not null);

create table tarjetas_biblioteca(
tarjeta_id int auto_increment primary key,
fecha_expiracion date,
usuario_id int unique,
foreign key (usuario_id) references usuario(usuario_id)
);

-- Insertar datos

insert into usuario(nombre, apellido, email) values 
('Juan', 'Perez', 'juanperez@gemail.com'),
('Maria', 'Gomez', 'mariagomez@gmail.com'),
('Carlos', 'Martinez', 'carlosmartinez@gmail.com'),
('Laura', 'Lopez', 'lauralopez@gmail.com');

insert into tarjetas_biblioteca(fecha_expiracion, usuario_id) values
('2023-12-31', 1),
('2023-07-28', 2),
('2023-02-16', 3),
('2023-08-02', 4);

insert into tarjetas_biblioteca(fecha_expiracion, usuario_id) values
('2023-12-31', 1);

-- Asociación muchos a uno / uno a muchos
-- MANY-TO-ONE / ONE-TO-MANY

create table autores(
autor_id int auto_increment primary key,
nombre varchar(50) not null,
apellido varchar(50) not null
);

create table libros(
libro_id int auto_increment primary key,
titulo varchar (100),
autor_id int,
foreign key (autor_id) references autores(autor_id)
);

-- Un autor puede tener muchos libros

insert into autores(nombre, apellido) values
('autor1', 'apellido1'),
('autor2', 'apellido2'),
('autor3', 'apellido3'),
('autor4', 'apellido4');

insert into libros(titulo, autor_id) values
('titulo1', 1 ),
('titulo2', 2 ),
('titulo3', 3 ),
('titulo4', 4 ),
('titulo5', 4 ),
('titulo6', 3 );


-- Asociación Many-to-Many /Muchos a Muchos

use biblioteca;
drop table eventos;
drop table eventos_salas;
drop table salas;

-- Crear tabla de eventos que se realizan en una biblioteca (talleres, conferencias)
create table eventos(
evento_id int auto_increment primary key,
nombre varchar(100) not null,
descripcion text,
fecha_evento date
);

-- Crear tabla de salas
create table salas(
sala_id int auto_increment primary key,
nombre varchar(100),
capacidad int
);

-- Crear una tabla de unión que relacione eventos con las salas.
-- Un evento puede tener varias sals, y un a sala puede ser utilizada para varios eventos.
-- Crear tabla eventos_salas
create table eventos_salas(
evento_id int,
sala_id int,
primary key (evento_id, sala_id), -- clave primaria compuesta
foreign key (evento_id) references eventos(evento_id),
foreign key (sala_id) references salas(sala_id)
);

-- Clave primaria compuesta (debe ser única en toda la tabla)
-- Introducir datos

insert into eventos(nombre, descripcion, fecha_evento) values
('Taller de escritura', 'Un taller para aspirantes a escritores', '2023-01-15'),
('Club de lectura', 'Discursión sobre libros', '2023-02-12'),
('Conferencia de Historia', 'Charla de historia', '2023-03-18');

insert into salas(nombre, capacidad) values
('sala A', 50),
('sala B', 100),
('sala C', 30);

-- Insertar datos a la tabla eventos_salas
-- 

insert into eventos_salas(evento_id, sala_id) values
(1, 1), -- taller de escritura en la Sala A
(1, 2), -- Taller de escritura en la Sala B
(1, 3), -- Taller de escritura en la Sala C
(2, 1), -- Club de lectura en la Sala A
(2, 2), -- Club de lectura en la Sala B
(2, 3), -- Club de lectura en la Sala C
(3, 1), -- Conferencia de Historia en la Sala A
(3, 2), -- Conferencia de Historia en la Sala B
(3, 3); -- Conferencia de Historia en la Sala C

-- Asociación Many-To-Many
-- Libros y Categorias. Podemos categorizar los libros en diferentes géneros 
-- y un libros puede pertenecer a varias categorías a la vez.

-- Para mostrar las columnas de una tabla
show columns from libros;

-- Crear la tabla de categorias
create table categorias(
categoria_id int auto_increment primary key,
nombre varchar (50) not null);

-- Crear la tabla de unión que relaciona libros con categorias.
create table libros_categorias(
libro_id int,
categoria_id int,
primary key (libro_id, categoria_id),
foreign key (libro_id) references libros(libro_id),
foreign key (categoria_id) references categorias(categoria_id));

-- ON DELETE CASCADE =  asegura que los registros de una tabla se eliminen automáticamente
-- si se elimina un libro o categoria.
insert into categorias(nombre) values
('Ficción'),
('Ciencia'),
('Arte');

-- Unsertar datos en la tabla de unión libros_categorias

insert into libros_categorias (libro_id, categoria_id) values
(1,1), -- Libro 1 está categorizado como de "ficción"
(1,2), -- Libro 1 esta categorizado como ciencia
(2,3), -- Libro 2 categoria "Arte"
(3,1); -- Libro 3 categoria "ficción"


