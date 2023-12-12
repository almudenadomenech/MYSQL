use universidad;

-- Utilizar base de datos universidad
-- Estructura de INNER JOIN
/*select empleados.nombre, departamentos.nombre as nombre_departamento
from empleados
inner join departamentos on empleados.departamento_id = 
departamentos.departamento_id;*/

-- Utilizar un inner join con las tablas departamentos y empleados
-- Consulta de todos los empleados con los nombre de sus departamentos

select empleados.nombre, departamentos.nombre as nombre_departamento
from empleados
inner join departamentos on empleados.departamento_id = 
departamentos.departamento_id;

select empleados.nombre, empleados.apellido, departamentos.nombre as nombre_departamento
from empleados
inner join departamentos on empleados.departamento_id = 
departamentos.departamento_id;

-- Consulta de todos los clientes y los montos de sus ventas

select clientes.nombre, ventas.monto
from clientes -- tabla principal/tabla izquierda
inner join ventas on clientes.cliente_id = ventas.cliente_id;

-- Mostrar el nombre del estudiante y el nombre del curso asociado

select estudiantes.nombre, cursos.nombre as nombre_curso
from estudiantes
inner join cursos on estudiantes.estudiante_id = cursos.estudiante_id;

-- Mostrar los estudiantes con sus fechas de nacimiento y los curso a los que estan inscritos
select estudiantes.nombre, estudiantes.fecha_nacimiento, cursos.nombre as nombre_curso
from estudiantes
inner join cursos on estudiantes.estudiante_id = cursos.estudiante_id;





