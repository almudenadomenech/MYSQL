
-- Usar bases de datos
USE sakila;

-- Consultar  o recuperar datos de una o varias tablas
-- con * son todas las columnas
SELECT * FROM actor;
SELECT * FROM category;

-- Consulta eligiendo las columnas y especificando de cuál tabla
SELECT actor_id, first_name FROM actor;
SELECT actor_id, first_name, last_update FROM actor;

-- Consulta de una table

SELECT * FROM city;

-- Consulta eligiendo las columnas
SELECT city_id, city FROM city;

-- Consulta con where
SELECT actor_id, first_name FROM actor WHERE actor_id > 5;

SELECT * FROM actor WHERE first_name= 'JULIA';

-- CONSULTA CON WHERE DONDE SELECCIONE DOS APELLIDOS
SELECT * FROM actor WHERE last_name IN ('mc, barrymore');

-- Consultar todas las columnas de la tabla film

SELECT * FROM film;
-- Consulta de la tabla film, con 3 columnas y la condicióon de que el film_id > 500
SELECT film_id, title, description FROM film WHERE film_id > 500;

-- Seleccionar a los actores que no tengan cierto apellido = MCQUEEN
SELECT * FROM actor WHERE last_name != 'mcqueen';
SELECT * FROM actor WHERE actor_id != 4;

-- Seleccionar películas con duración mayor a 60 y menor a 100 min
SELECT * FROM film WHERE length >60 AND length <100;
SELECT * FROM film WHERE length >90 AND length <95;

-- Seleccionar film con duración mayor a 60 min, que traiga todas las columnas
SELECT * FROM film WHERE length > 60;


-- Selecccionar  en la tabla de customer que la columna "active" sea true
SELECT * FROM customer WHERE active=true AND 
(address_id<50 OR address_id >=100);

-- Seleccionar todos los customers que no tengan el last_name 'WILLIAMS'
SELECT * FROM customer WHERE NOT last_name='williams';
--
SELECT * FROM customer WHERE NOT active=true;

SELECT * FROM customer WHERE NOT store_id=2;

-- Operador de coincidencia de patrones
-- Seleccionar todos los actores cuyo nombre comience con la letra "A"
SELECT * FROM actor WHERE first_name LIKE 'A%';
SELECT * FROM actor WHERE last_name  LIKE 'D%';
SELECT * FROM actor WHERE last_name  LIKE 'D%';
SELECT * FROM actor WHERE last_name  LIKE '%D%';

-- Operadores de rango
-- Seleccionar películas con una duración entre 90 y 120 min
SELECT * FROM film WHERE length BETWEEN 90 AND 120;

-- Seccionar películas con ciertas clasificaciones específicas
SELECT * FROM film WHERE rating IN ('pg', 'g');

-- Seleccionar películas ordenadas por su duración de manera descendente
SELECT * FROM film ORDER BY length DESC;
SELECT * FROM film ORDER BY length ASC;
-- Seleccionar películas ordenadas alfabéticamente por título
SELECT * FROM film ORDER BY title;













