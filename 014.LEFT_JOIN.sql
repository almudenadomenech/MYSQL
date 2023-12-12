use universidad;

-- Estructura de LEFT JOIN
/*select empleados.nombre, departamentos.nombre as nombre_departamento
from empleados
left join departamentos on empleados.departamento_id = 
departamentos.departamento_id;*/

-- Consulta en las tablas departamentos y empleados, utilizando LEFT JOIN,
-- para relacionar los datos de ambas tablas.

-- Insertar datos de empleados sin departamento asociado

insert into empleados(nombre, apellido) values
('Roberto', 'Martinez'),
('Lucia', 'Garcia');

-- Insertar datos a departamentos sin asignarle un departamento.
insert into departamentos(nombre) values
('Cocina'),
('Informática');

-- Consulta de todos los empleados con los nombres de sus departamentos,
-- incluyendo a los empleados sin departamento.

select empleados.nombre, empleados.apellido, departamentos.nombre as nombre_departamento
from empleados
left join departamentos on empleados.departamento_id = departamentos.departamento_id;

-- Consulta de departamentos y sus empleados incluidos los departamentos sin empleados.
select departamentos.nombre as nombre_departamento, empleados.nombre, empleados.apellido 
from departamentos
left join empleados on departamentos.departamento_id = empleados.departamento_id;

-- LEFT JOIN con la tabla de clientes y ventas
-- Insertar datos de clientes nuevos y ventass sin clientes asignados.

insert into clientes(nombre, direccion) values
('Luis Gomez','Avenida 1'),
('Angel Lopez','Corazón de Maria 67');

insert into ventas(monto) values
(100),
(900);

-- Mostrar clientes y todas sus ventas, incluyendo los clientes sin ventas
 select clientes.nombre, ventas.monto
 from clientes
 left join ventas on clientes.cliente_id = ventas.cliente_id;
 
 -- Mostras todas las ventas y los clientes asociados
 select ventas.monto, clientes.nombre
 from ventas
 left join clientes on ventas.cliente_id = clientes.cliente_id;
 



