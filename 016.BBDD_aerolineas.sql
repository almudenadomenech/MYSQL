-- Crear base de datos
create database if not exists aerolinea;

-- Usar esta base de datos
use aerolinea;

-- Crear tablas Aviones y Vuelos
-- Asociación many-to-many, cada vuelo está asociado a un solo avión
-- cada avión puede realizar múltiples vuelos

create table aviones(
avion_id int auto_increment primary key,
modelo varchar(50),
capacidad int
);

create table vuelos(
vuelo_id int auto_increment primary key,
destino varchar(50),
fecha date,
avion_id int,
foreign key (avion_id) references aviones(avion_id)
);

-- Insertar datos
insert into aviones(modelo, capacidad) values
('Modelo 1', 50),
('Modelo 2', 60),
('Modelo 3', 100);

insert into vuelos(destino, fecha, avion_id) values
('New York', '2023-12-15', 1),
('Londres', '2023-12-16', 2),
('Tokio', '2023-12-24', 1);

insert into vuelos(destino, fecha) values
('Mexico', '2023-12-30'),
('Italia', '2023-12-20');

-- CONSULTA
-- INNER JOIN
-- Consulta para mostrar cada vuelo con el modelo de avión

select vuelos.destino, aviones.modelo
from vuelos
inner join aviones on vuelos.avion_id = aviones.avion_id;

-- LEFT JOIN
-- Consulta para mostrar todos los aviones y los vuelos asociados
-- a ellos incluyendo los aviones sin vuelos asignados
select aviones.modelo, vuelos.destino
from aviones
left join vuelos on aviones.avion_id = vuelos.avion_id;

-- RIGHT JOIN
-- Mostrar todos los vuelos (R) y los aviones (L) asignados a ellos,
-- inlcuyendo vuelos que not tienen un avión asignado

select aviones.modelo, vuelos.destino
from aviones
right join vuelos on aviones.avion_id = vuelos.avion_id;

-- Utilizar right join para mostrar todos los vuelos y los modelos
-- de aviones asociados, ordenando por fecha.
-- Si no especifico que el ORDER BY sea DESC, por default lo ordena ASC
select aviones.modelo, vuelos.destino, vuelos.fecha
from aviones
right join vuelos on aviones.avion_id = vuelos.avion_id
order by vuelos.fecha desc;

-- Sin nulos
select aviones.modelo, vuelos.destino, vuelos.fecha
from aviones
inner join vuelos on aviones.avion_id = vuelos.avion_id
order by vuelos.fecha desc;

-- Consulta que devuelva los destinos y fechas de vuelos para
-- un modelo de avión específico
select aviones.modelo, vuelos.destino, vuelos.fecha
from aviones
inner join vuelos on aviones.avion_id = vuelos.avion_id
where aviones.modelo = 'Modelo 1';
