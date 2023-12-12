-- Crear base de datos Concesionanrio
create database if not exists concesionario;
use concesionario;

-- Crear tabla conducator
create table conductor(
conductor_id int auto_increment primary key,
nombre varchar(50),
apellido varchar(50) not null,
email varchar(100));

-- Creat tabla cohe
create table coche(
coche_id int auto_increment primary key,
marca varchar(50),
modelo varchar(50)
);

-- Creat tabla conductor_coche
create table conductor_coche(
conductor_id int,
coche_id int,
primary key(conductor_id, coche_id),
foreign key (conductor_id) references conductor(conductor_id),
foreign key (coche_id) references coche(coche_id));


insert into conductor(nombre, apellido, email) values
('Calos','Gonzales', 'carlosgonzales@gmail.com'),
('Ana', 'Martinez', 'anamartinez@gmail.com'),
('Luis', 'Fernandez', 'luisfernadez@gmail.com');

insert into coche(marca, modelo) values
('Honda', 'Civic'),
('Ford', 'Fiesta'),
('wolkswagen', 'Golf');

-- Insertar datos a tabla de unión conductor_coche

insert into conductor_coche(conductor_id, coche_id) values
(1, 1), -- Carlos conduce un Honda Civic
(1, 2), -- Carlos conduce un Ford
(1, 3), -- Carlos conduce un Golf
(2, 1); -- Ana conduce un Honda

