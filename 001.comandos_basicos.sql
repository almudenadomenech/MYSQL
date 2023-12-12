-- Crear bases de datos 
CREATE DATABASE base_de_datos2;

-- Eliminar base de datos
DROP DATABASE base_de_datos2;

-- Query table
CREATE TABLE IF NOT EXISTS Empleados(
id INT, 
Nombre VARCHAR(50),
Apellidos VARCHAR(50),
Genero CHAR(1),
Teletrabajo BOOLEAN,
Salario NUMERIC(6, 2),
Fecha_nacimiento DATE,
Hora_entrada TIME,
Edad INT
);

-- Eliminar una table
DROP TABLE IF EXISTS empleados;

-- Tipos de datos
-- INT = número enteros
-- BOOLEAN = verdadero o falso
--  CHAR, VARCHAR, TEXT = cadena de texto
-- NUMERIC = número decimales
-- DATE = fechas
-- TIME = tiempo, hora
-- SERIAL, BIGSERIAL = número autoincremental,  en cada fila un valor único (clave primaria)

-- Renombrar una tabla
ALTER TABLE empleados RENAME TO empleados_nuevo;

-- volver al nombre original
ALTER TABLE empleados_nuevo RENAME TO empleados;

-- Agregar columnas a una tabla existente
ALTER TABLE empleados ADD COLUMN email VARCHAR(50);
-- Eliminar columnas de una tabla
ALTER TABLE empleados DROP COLUMN email;

-- crear tabla empleados 2
CREATE TABLE IF NOT EXISTS empleados_2(
id INT PRIMARY KEY,
nombre VARCHAR(50) NOT NULL,
apellidos VARCHAR(50) NOT NULL,
genero CHAR(1),
teletrabajo BOOLEAN,
salario DECIMAL(9, 2) CHECK(salario>=100000),
fecha_nacimiento DATE,
hora_entrada TIME,
edad INT,
email VARCHAR(100) UNIQUE
);


-- tabla "Productos", mínimo 10 columnas







