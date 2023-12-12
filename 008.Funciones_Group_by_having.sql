-- Funciones
-- Realizar cálculos de un grupo de filas, y nos pueden dar un único
-- resultaso por grupo.
-- COUN (), SUM, MAX, MIN

-- COUNT .- Contar el número de filas de la columna que especifiquemos

 use universidad;
 
 -- Contar el número total de filas en la tabla de profesores
 select count(*) 
 from profesores;
 
 -- Lo mismo pero modificando el nombre de la columna con el resultado, opcional
 select count(*) as total_profesores from profesores;
 
 -- Contal el total de filas de profesores que SI tienen datos en la columna de salario
 select count(salario) from profesores;
 
 --  Contar el total de filas de profesores que SI tienen datos en teléfono
 select count(telefono) from profesores;
 
 -- Función SUM().- Sumaria todos los valores de una columna específica
 -- sintaxis de SUM
 select sum(combre_columna) from nombre_tabla;
 -- Sumar todos los valores de salario
 select sum(salario) from profesores;
 
 -- Sumar los salarios SOLO de los profesores activos
 select sum(salario) from profesores where activo=1;
 
 -- GROUP BY.- Agrupar filas que tienen los mismos valores en columnas específicas.
 -- por ejemplo, departamento (sales, ventasm support...)
 
 -- sumar salarios por departamento
 select departamento, sum(salario) from profesores group by departamento;
 
 -- AVG .- Para calcular el promedio.
 -- Calcular el salario promedio de todos los profesores
 select avg(salario) from profesores;
 
 -- calcular el salario promedio solo de profesores activos
 select avg(salario) from profesores where activo=1;
 
 -- Calcular el salario promedio por departamento
 select departamento, avg(salario) from profesores group by departamento;
 
 -- MAX Y MIN .- Encontral el maximo y el minimo por columna
 
 -- 1. Encontrar el salario máximo por departamento
select departamento, max(salario) from profesores group by departamento;
  
  -- 2. Encontrar el salario mínimo por departamento
 select departamento, min(salario) from profesores group by departamento; 
 
 -- GROUP BY.- Agrupando por don columans
 -- Agrupar por departamentos y estado (activo o no activo)
 select departamento, activo, count(*) as cantidad_profesores
 from profesores
 group by departamento, activo;
 
 -- Calcular el salario promedio por departamento y estado (activo o no activo)
 select  departamento, activo, avg (salario) as salario_promedio from profesores
 group by departamento, activo;
 
 -- HAVIN.- Filtrar resultados de grupos.
 -- Filtrar departamentos con un salario promedio mayor que 5000
 select departamento, avg(salario) as salario_promedio
 from profesores 
 group by departamento
 having salario_promedio > 5000;
 
 -- Filtrar el rango de salario promedio por departamento, que me aparezcan solo los que tienen
 -- un salario promedio entre 4000 y 5000
 select departamento, avg(salario) as salario_promedio
 from profesores
 group by departamento
 having salario_promedio between 4000 and 5000;
 
 -- Filtrar por departamento con 2 o mas profesores activos;
 select departamento, count(*) as cantidad_profesores
 from profesores
 where activo=1
 group by departamento
 having cantidad_profesores >= 2;
 
 
 
 
 
 
 
 
 