-- Utilizar la base de datos sakila
use sakila;

-- DISTINCT
-- Elimina registros duplicados de los resultados de una búsqueda
-- Útil cuando se desea mostrar solo los resultados únicos.

-- Consulta de todas las columnas y filas
select * from actor; -- 203 filas

-- Consulta de la columna "first_name" de la tabla de actor
select first_name from actor;

-- Consulta del first_name de la tabla actor y que los ordene por el first_name
select first_name from actor order by first_name;

-- Consulta del first_name de la tabla "actor" sin nombres repetidos

select distinct first_name from actor;

-- Consulta del realease_year de la tabla film (películas)

select distinct release_year from film;
