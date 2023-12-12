
-- Relaciones ONE-TO-ONE
-- Asociar tablas, que una tabla apunte a otra tabla, cada una tiene su propia
-- PK (primary key/clave primaria y solo una tiene FK (foreing key/clave foránea)
-- clave foránea, es para establecer relaciones entre dos tablas.
 
 -- Usar la batos de universidad
 use universidad;
 
 create table estudiantes(
 estudiante_id int auto_increment primary key,
 nombre varchar(50),
 fecha_nacimiento date,
 email varchar(100) unique not null
 );
 
 create table cursos(
 curso_id int auto_increment primary key,
 nombre varchar(100),
 estudiante_id int unique,
 foreign key(estudiante_id) references estudiantes(estudiante_id) 
 );
 -- Esta relación nos indica que cada curso esta asociado a un estudiante específico
 insert into estudiantes (nombre, fecha_nacimiento, email) values
 ('Maria Lopez', '2000-03-10', 'ejemplo@email.com'),
 ('Carlos Gomez', '2005-11-25', 'ejemplo2@email.com'),
  ('Luisa Torres', '1980-03-10', 'ejemplo3@email.com'),
 ('Javier Ramirez', '1989-03-10', 'ejemplo4@email.com'),
  ('Laura Hernandez', '2015-03-10', 'ejemplo5@email.com');
  
  insert into cursos (nombre, estudiante_id) values
  ('Inglés', 3),
  ('Ciencias', 4),
  ('Economia', 5),
  ('Arte', 1),
  ('Física', 2);
 
 -- Consulta de los estudiantes que nacieron antes del 2015
 select * from estudiantes where fecha_nacimiento <'2015-01-01';
 
 -- Contar el numero total de estudiantes
 select count(*) as numero_estudiantes from estudiantes;
 
 -- Hacer el email de el estudiante con id=2
 update estudiantes set email='correomodificado@gamil.com' where estudiante_id=2;
 
 update estudiantes set fecha_nacimiento = '2001-03-10' where nombre = 'Maria Lopez';
 
 -- Eliminar a todos los estudiantes que nacieron después del 2015
 -- No se puede eliminar estudiantes por la clave foránea
 delete from estudiantes where fecha_nacimiento > '2015-01-01';
 
 