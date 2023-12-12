
-- Crear base de datos 
CREATE DATABASE IF NOT EXISTS universidad;

-- Crear una tabla que se llame "profesores"
CREATE TABLE universidad.profesores(
profesor_id INT AUTO_INCREMENT PRIMARY KEY,
nombre VARCHAR(50) NOT NULL, 
apellido VARCHAR(50) NOT NULL, 
email VARCHAR(50) NOT NULL,
telefono VARCHAR(20),
direccion TEXT,
fecha_nacimiento DATE,
departamento VARCHAR(50),
salario DECIMAL(10, 2),
activo TINYINT(1)
);

-- Especificar la base de datos
USE universidad;

-- Consulta de la tabla para confirmar que se creó, opcional por si no la encontrábamos desde schemas
SELECT * FROM profesores;
insert into profesores (nombre, apellido, email, telefono, direccion, fecha_nacimiento, departamento, salario, activo) values ('Kristal', 'Ridsdole', 'kridsdole0@mail.ru', '623-651-8320', '601 Commercial Crossing', '2023-10-21', 'Research and Development', 7189.3, 1);
insert into profesores (nombre, apellido, email, telefono, direccion, fecha_nacimiento, departamento, salario, activo) values ('Quinta', 'Triplet', 'qtriplet1@usnews.com', '291-392-8760', '10 Scott Park', '2023-05-10', 'Human Resources', 3104.69, 0);
insert into profesores (nombre, apellido, email, telefono, direccion, fecha_nacimiento, departamento, salario, activo) values ('Bernita', 'Mapletoft', 'bmapletoft2@domainmarket.com', '435-732-0965', '9 Red Cloud Lane', '2023-11-25', 'Marketing', 3830.34, 0);
insert into profesores (nombre, apellido, email, telefono, direccion, fecha_nacimiento, departamento, salario, activo) values ('Kaleena', 'Shank', 'kshank3@smh.com.au', '494-496-4648', '34023 Derek Parkway', '2023-07-12', 'Engineering', 2121.02, 1);
insert into profesores (nombre, apellido, email, telefono, direccion, fecha_nacimiento, departamento, salario, activo) values ('Gard', 'Glacken', 'gglacken4@github.io', '679-223-6486', '10 Waywood Junction', '2022-12-28', 'Human Resources', 6360.9, 1);
insert into profesores (nombre, apellido, email, telefono, direccion, fecha_nacimiento, departamento, salario, activo) values ('Martelle', 'Dale', 'mdale5@home.pl', '359-272-3114', '9 Lake View Parkway', '2023-07-21', 'Human Resources', 2641.47, 0);
insert into profesores (nombre, apellido, email, telefono, direccion, fecha_nacimiento, departamento, salario, activo) values ('Hermy', 'Dossit', 'hdossit6@woothemes.com', '969-908-7640', '85758 Corben Plaza', '2023-08-27', 'Legal', 2743.72, 0);
insert into profesores (nombre, apellido, email, telefono, direccion, fecha_nacimiento, departamento, salario, activo) values ('Winn', 'Ivashin', 'wivashin7@yellowpages.com', '870-468-3232', '4 Pearson Place', '2023-09-22', 'Product Management', 2582.64, 1);
insert into profesores (nombre, apellido, email, telefono, direccion, fecha_nacimiento, departamento, salario, activo) values ('Court', 'Oleksiak', 'coleksiak8@oracle.com', '934-852-2256', '4 Golden Leaf Point', '2023-05-02', 'Support', 8689.01, 1);
insert into profesores (nombre, apellido, email, telefono, direccion, fecha_nacimiento, departamento, salario, activo) values ('Brittaney', 'Goggey', 'bgoggey9@businessweek.com', '363-729-8565', '30 Leroy Pass', '2023-06-02', 'Accounting', 6601.45, 1);
insert into profesores (nombre, apellido, email, telefono, direccion, fecha_nacimiento, departamento, salario, activo) values ('Molly', 'Tallquist', 'mtallquista@bbb.org', '445-616-7265', '50415 Union Junction', '2023-08-18', 'Human Resources', 7906.19, 1);
insert into profesores (nombre, apellido, email, telefono, direccion, fecha_nacimiento, departamento, salario, activo) values ('Emelyne', 'Easseby', 'eeassebyb@desdev.cn', '713-201-3645', '27042 Gale Crossing', '2023-10-30', 'Services', 1262.23, 1);
insert into profesores (nombre, apellido, email, telefono, direccion, fecha_nacimiento, departamento, salario, activo) values ('Josephine', 'Eliasson', 'jeliassonc@exblog.jp', '751-891-6152', '08 Sutherland Trail', '2023-01-23', 'Research and Development', 3687.73, 1);
insert into profesores (nombre, apellido, email, telefono, direccion, fecha_nacimiento, departamento, salario, activo) values ('Blinnie', 'Sheard', 'bsheardd@t-online.de', '327-740-6992', '899 Brentwood Circle', '2023-04-28', 'Support', 2276.94, 1);
insert into profesores (nombre, apellido, email, telefono, direccion, fecha_nacimiento, departamento, salario, activo) values ('Lilith', 'Dalling', 'ldallinge@posterous.com', '691-209-0791', '60185 Loftsgordon Way', '2023-03-29', 'Sales', 3798.53, 1);
insert into profesores (nombre, apellido, email, telefono, direccion, fecha_nacimiento, departamento, salario, activo) values ('Donnell', 'Safhill', 'dsafhillf@blog.com', '388-721-1313', '60 Jana Road', '2023-08-24', 'Training', 1100.34, 1);
insert into profesores (nombre, apellido, email, telefono, direccion, fecha_nacimiento, departamento, salario, activo) values ('Cynthy', 'Moss', 'cmossg@engadget.com', '179-880-0261', '7 Sundown Alley', '2023-04-10', 'Training', 6788.72, 0);
insert into profesores (nombre, apellido, email, telefono, direccion, fecha_nacimiento, departamento, salario, activo) values ('Pen', 'Dybell', 'pdybellh@ted.com', '843-699-7569', '2070 Bartillon Terrace', '2023-04-16', 'Support', 3355.0, 0);
insert into profesores (nombre, apellido, email, telefono, direccion, fecha_nacimiento, departamento, salario, activo) values ('Lainey', 'Mitten', 'lmitteni@shareasale.com', '337-308-0371', '3 Golf Way', '2023-01-10', 'Services', 1453.92, 1);
insert into profesores (nombre, apellido, email, telefono, direccion, fecha_nacimiento, departamento, salario, activo) values ('Shelby', 'Trevillion', 'strevillionj@unblog.fr', '173-210-6571', '7633 Toban Plaza', '2023-06-19', 'Business Development', 4402.65, 1);

-- inserta una fila (registro) sin mockaroo
insert into profesores (nombre, apellido, email, telefono, direccion, fecha_nacimiento, departamento, salario, activo)
values ('Daniela', 'Estrada', 'daniela@certidevs@.com', '9999999999', 'corazon de maria #56', '2022-12-10', 'ventas', 900.00, 1); 


-- CONSULTA, SELECCIONAR TODOS LOS PROFESORES
-- OTRA OPCIÓN, ES DESDE SCHEMAS, CLIC DETRECHO EN LA TABLA Y DAR A "SELECT ROWS.."
select * from profesores;

-- SELECCIONAR A LOS PROFESORES CON EL DEPARTAMENTO "SUPPORT"
select * from profesores where departamento= 'Support';

-- SELECCIONAR A TODOS LOS PROFESORES ACTIVOS
select * from profesores where activo = 1;

-- SELECCIONAR A TODOS LOS PROFESORES CON FECHA DE NACIMIENTO DESPUES DE 2023-10-10

select * from profesores where fecha_nacimiento > '2023-10-10';

-- SELECCIONAR A TODOS LOS PROFESORES CON UN SALARIO MAYOR A 2000 Y MENOR A 2500.
select * from profesores where salario >2000 and salario <2500;

-- SELECCIONAR A LOS PROFESORES ORDENADOS POR APELLIDO DE FORMA ASCENDENTE
select * from profesores order by apellido asc;
select * from profesores order by apellido desc;

-- SELECCIONAR A LOS PROFESORES CON TERMINACIÓN .COM
select * from profesores where email like'%.com';

-- CONSULTA PARA CONTAR EL NUMERO TOTAL DE PROFESORES
-- Total_profesores crea un alias/variable intermedia
select count(*) as total_profesores from profesores;

-- CONSULTA PARA OBTENER EL SALARIO PROMEDIO DE TODOS LOS PROFESORES
select avg(salario) as salario_promedio from profesores;

-- SELECCIONAR A LOS PROFESORES CON SALARIO MAYOR A LA MEDIA
select * from profesores where salario > (select avg(salario) from profesores);

-- SELECCIONAR A LOS PROFESORES QUE NACIERTON EN ENERO
select *from profesores where month (fecha_nacimiento) =1;

-- SELECCIONAR A LOS PROFESORES CON SALARIO ENTRE 6000 Y 7000
select * from profesores where salario between 6000 and 7000;

-- SELECCIONAR A LOS PROFESORES NO ACTIVOS (activo=0) y que tengan un departamento específico= 'sales'
select * from profesores where activo = 0 and departamento ='sales';

-- Insert con datos null
insert into profesores (nombre, apellido, email) values ('Jimmy', 'Theurer', 'jtheurerj@baidu.com');
insert into profesores (nombre, apellido, email) values ('Maria', 'Garcia', 'maria@gar.com');

-- SELECCIONAR A LOS PROFESORES CON TELEFONO ESPECIFICADO
select * from profesores where telefono is not null;

-- SELECCIONAR A LOS PROFESORES INACTIVOS ORDENADO POR FECHA DE NACIMIENTO ASCENDENTE
select * from profesores where activo = 0  order by fecha_nacimiento asc;

-- SELECCIONAR A LOS PROFESORES CON SALARIO MAXIMO
select * from profesores where salario = (select max(salario) from profesores);

-- SELECCIONAR PROFESORES CON EL SALARIO MINMO Y MAXIMO
select * from profesores where salario = (select min(salario) from profesores)
 or salario = (select max(salario) from profesores);
 
 -- UPDATE .- actualizar datos existentes
 -- Actualizar el telefono del profesor con id=1
 update profesores set telefono = '555555555' where profesor_id=1;
 update profesores set telefono = '888888888' where profesor_id=2;
 
 -- Actualizar o cambiar el departamento del profesor con id=3
 
 update profesores set departamento = 'contabilidad' where profesor_id=3;
 
 -- Modificar el telefono y el email del profesor con id=3
 update profesores set telefono ='111111111', email='juan@email.com' where profesor_id=3;
 
 -- Modificar el salario del profesor con id=4
 update profesores set salario = 20000 where profesor_id=4;
 
 -- Modificar el nombre de un departamento, todos los que dicen support se modifiquen a ventas
 update profesores set departamento ='ventas' where departamento = 'Support';
 
 -- Actualizar la direccion y el salario del profesor con id=5
 update profesores set direccion ='Calle Princesa, 25', salario = 8000 where profesor_id=5;

-- DELETE
-- Eliminar al profesor con id=1
delete from profesores where profesor_id=1;

-- Eliminar al profesor con id=21
delete from profesores where profesor_id=21;




