USE universidad;

-- RIGHT JOIN
-- Tablas de departamentos y empleados
-- Mostrar todos los departamentos (left) con los nombres de los empleados (right)
-- Incluyendo empleados sin departamento

select departamentos.nombre, empleados.nombre as empleado_departamento
from departamentos
right join empleados on departamentos.departamento_id = empleados.departamento_id;

-- Mostrar las ventas (right) con los nombres de los clientes (left),
-- Incluyendo las ventas sin cliente asociado

select clientes.nombre, ventas.monto
from clientes
right join ventas on clientes.cliente_id = ventas.cliente_id;


