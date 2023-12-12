/* DELETE
es para elminar registros */

-- Eliminar un actor específico por su id
DELETE FROM actor WHERE actor_id=207;
SELECT * FROM actor;
DELETE FROM actor WHERE actor_id=206;

-- Elimar un actor por su nombre y apellido
DELETE FROM actor WHERE first_name = 'Marcos' AND last_name ='Tellez';

-- Eliminar a todos los actores que tengan un apellido en específico.
DELETE FROM actor WHERE last_name = 'Garcia';

-- Eliminar todos los actores
DELETE FROM actor;
