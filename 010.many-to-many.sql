
-- RELACIÓN MANY-TO-ONE Y ONE-TO-MANY
-- La diferecia radica en como tengo organizadas las tablas y la dirección de la relación entre ellas
-- MANY-TO-ONE
-- ejemplo:
-- tabla principal: departamentos, tabla secundaria: empleados
-- cada empleado trabaja en un solo departamentos, un departamento puede tener varios empleados

-- UTILIZAR base de datos universidad
use universidad;

create table clientes (
cliente_id int auto_increment primary key,
nombre varchar(50),
direccion varchar(100) default 'direccion no especificada'
);

create table ventas (
venta_id int auto_increment primary key,
monto decimal(10, 2),
cliente_id int,
foreign key (cliente_id) references clientes(cliente_id)
);

-- Insertar datos
insert into clientes(nombre, direccion) values
('Juan Perez', 'corazon de maria,89'),
('Ana Rodriguez', 'calle 123'),
('Luis Gomez', 'Avenida 76');

insert into clientes(nombre) values
('Oscar Javier');

-- Insertar datos en ventas
insert into ventas (monto, cliente_id) values
(100.50, 1),
(75.30,2),
(150.00, 3),
(60.45, 4),
(80.00, 1);
insert into ventas (monto, cliente_id) values
(450.50, 2),
(87.59, 3),
(125.14, 4);

-- Crear dos tablas una "departamentos" y otra de "empleados"
-- varios empleados puedan trabajar en el mismo departamento (5 empleados en Recursos humanos)
-- tabla departamento= departamento_id, nombre
-- tabla de empleados= empleado_id, nombre, apellido, departamento_id FK

create table departamentos (
departamento_id int auto_increment primary key,
nombre varchar(50)
);
create table empleados (
empleado_id int auto_increment primary key,
nombre varchar(50),
apellido varchar(50),
departamento_id int,
foreign key (departamento_id) references departamentos(departamento_id)
);

insert into departamentos (nombre) values
('Ventas'),
('Recursos Humanos'),
('Administración');

insert into empleados(nombre, apellido, departamento_id) values
('Laura', 'Rodriguez', 1),
('Javier', 'Gomez', 1),
('Ana', 'Lopez', 2),
('Carlos', 'Garcia', 3);









