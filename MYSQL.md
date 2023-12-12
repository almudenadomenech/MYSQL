## TIPOS DE DATOS

* INT = Número enteros
* BOOLEAN =  valores de verdadero o falso
* CHAR, VARCHAR, TEXT = cadenas de texto
* NUMERIC = Números decimales
* DATE = Fechas
* TIME = Horas
* DATATIME = Fecha y hora

## PARA CREAR UNA BASE DE DATOS

 CREATE DATABASE nombre_bases_de_datos;

 ## PARA BORRAR UNA BASE DE DATOS

 DROP DATABASE nombre_base_de_datos;

 ## PARA CREAR UNA TABLA

 CREATE TABLA IR NOT EXISTS nombre_tabla;

 ## BORRAR UNA TABLA

 DROP TABLE nombre_tabla;

 ## RENOMBRAR UNA TABLA

ALTER TABLA empleados RENAME TO empleados_nueva;

## AGREGAR COLUMNAS A UNA TABLA EXISTENTE

ALTER TABLE empleados ADD COLUMN email VARCHAR (50);

## ELIMINAR COLUMNA DE UNA TABLA

ALTER TABLE empleados DROP COLUMN email;


## CREAR UNA TABLA E INTRODUCIR DATOS

CREATE TABLE IF NOT EXISTS empleados(
    id INT,
    casado BOOLEAN,
    nombre VARCHAR(50),
    genero CHAR(1),
    salario NUMERIC (9,2),
    fecha_cumpleaños DATE,
    hora_de_entrada TIME);

## PONER LA CLAVE PRIMARIA

por ejemplo:
id INT PRIMARY KEY,

## RELLENAR OBLIGATORIAMENTE UN CAMPO

nombre VARCHAR(50) NOT NULL,

## PARA PONER UNA CONDICION

salario DECIMAL(9, 2) CHECK (salario<= 10000),

## VALOR UNICO

email VARCHAR(100) UNIQUE,


## INTRODUCIR DATOS EN UNA TABLA

 ## INSERT INTO

Permite insertar nuevos registros en una tabla

 INSERT INTO nombre_tabla (columnas1, columna2,...) VALUES (Introducir los datos);

INTO= Indica la tabla
VALUES= los valores/datos de la tabla

## CAMBIAR DATOS DE UNA TABLA

## UPDATE

UPDATE nombre_tabla SET
columna_1= valor_1, columna_2= valor_2,
WHERE id=1;

## BORRAR DATOS DE UNA TABLA

## DELETE
 
 Borra registros de una tabla
 
 DELETE FROM nombre_tabla WHERE id=1;



## CONSULTAS

* Para usa una base de datos específica
  USE nombre_de_la_base_de_datos

* CONSULTAR O RECUPERAR DATOS DE UNA TABLA
  CON *  SON TODAS LAS COLUMNAS

  SELECT * FROM actores;

* CONSULTAR ELIGIENDO LAS COLUMNAS Y ESPECIFICANDO DE QUE TABLA

  SELECT actor_id, first_name FROM actor;

  ## CONSULTA CON WHERE

  SELECT * FROM nombre_tabla WHERE nombre_columna= *****;

  SELECT * FROM  nombre_tabla WHERE (se puede poner una condicion con una columna <, >, =, !=);

  Con AND Y OR

  Ejemplo:
  SELECT * FROM customer WHERE active=true AND (address_id <50 OR address_id >= 100);

Con NOT

Ejemplo:
SELECT * FROM customer WHERE NOT last_name= 'williams';

## OPEREADOR DE COINCIDENCIA DE PATRONES

   Que empiecen por una letra concreta. "A"

   SELECT * FROM nombre_tabla WHERE apellido LIKE 'A%';

  Que terminen con la letra "A"

  SELECT * FROM nombre_tabla WHERE apellido LIKE '%A';

  Que contengan la letra "A";

  SELECT * FROM nombre_tabla WHERE apellido LIKE '%A%';

  ## OPERADORES DE RANGO (BETWEEN)

  Ejemplo:
  SELECT * FROM nombre_tabla WHERE nombre_columna BETWEEN 90 AND 120;

  ## IN

  Ejemplo:
  SELECT * FROM film WHERE rating IN ('pg', 'g');

## ORDER BY

  SELECT * FROM film ORDER BY title;

* DESC (Ordena de manera descendente)
  SELECT * FROM film ORDER BY length DESC;

* ASC (Ordena de manera ascendente)
  SELECT * FROM film ORDER BY length ASC;

## CONSULTA PARA CONTAR (COUNT)

* Con As nombre de variable intermedia

 SELECT COUNT(*) as total_profesores FROM nombre_tabla;

* Si no se quiere crear una variable intermedia.

  SELECT count(*) FROM profesores;

## PROMEDIO (AVG)

* Con As nombre de variable intermedia

  SELECT AVG (salario) AS salario_promedio FROM profesores;

* Si no se quiere crear una variable intermedia.

  SELECT AVG (salario) FROM nombre_tabla;

  * MAYOR A LA MEDIA

   SELECT * FROM profesores WHERE salario > (SELECT AVG(salario) FROM profesores);

   ## DISTINCT 

   Elimina registros duplicado de los resultados de una consulta.

   SELECT DISTINCT nombre FROM personas;

   ## GORUP BY

   Se utiliza para agrupar filas que tienen los mismos valores en columnas especícas en grupos (conjunto de resultados agrupados)
  
   La cláusula GROUP BY es a menudo útil en combinación con las funciones de agregación como SUM(), AVG(), MAX(), MIN() y COUNT() para obtener resúmenes de datos.

## HAVING
  En SQL, la cláusula HAVING se usa principalmente en conjunto con GROUP BY para filtrar los resultados de grupos que no cumplen ciertas condiciones. Es similar a la cláusula WHERE, pero mientras WHERE filtra las filas individuales, HAVING filtra los grupos.

  SELECT columna1, columna2, ... 
  FROM tabla
  WHERE condicion
  GROUP BY columna1, columna2, ... 
  HAVING condicion;

  SELECT ProductoID, SUM(Cantidad) as TotalPedidos
FROM Pedidos
GROUP BY ProductoID
HAVING SUM(Cantidad) > 4;

## RELACIONES ENTRE TABLAS

  * Relaciones uno a uno (One-to-One, 1:1): Cada fila en la tabla A está vinculada a no más de una fila en la tabla B. Este es un caso bastante raro de ver en la práctica, ya que los datos de ambas tablas podrían almacenarse juntos.

  * Relaciones uno a muchos (One-to-Many, 1:N): Para cada fila en la tabla A, puede haber cero, una o muchas filas en la tabla B. Es el tipo más común de relación.

  * Relaciones muchos a muchos (Many-to-Many, M:N): Cada fila en la tabla A puede estar relacionada con varias filas en la tabla B y viceversa. Se maneja a través de una tabla intermedia o de unión.

    ## claves primarias y foráneas

    * Clave primaria (Primary Key, PK): Campo único en una tabla que identifica de forma única cada fila. No puede ser nulo y no admite duplicados.

    * Clave foránea (Foreign Key, FK): Campo en una tabla que enlaza los datos de dos tablas, coincidiendo con la clave primaria de otra tabla.

















