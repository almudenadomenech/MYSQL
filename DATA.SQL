INSERT INTO dishes(dish_name, description, price) values
('Plato 1', 'Descripcion del plato 1', 14.50),
('Plato 2', 'Descripcion del plato 2', 6.50),
('Plato 3', 'Descripcion del plato 3', 12.10),
('Plato 4', 'Descripcion del plato 4', 9.35);

INSERT INTO employees (first_name, last_name, position, salary) values
('nombre 1', 'apellido 1', 'posicion 1', 1250.30),
('nombre 2', 'apellido 2', 'posicion 2', 1050.00),
('nombre 3', 'apellido 3', 'posicion 3', 1350.10),
('nombre 4', 'apellido 4', 'posicion 4', 980.90),
('nombre 5', 'apellido 5', 'posicion 5', 1400.00);

INSERT INTO customers(first_name, last_name, contact_info) values
('nombre cliente 1', 'apellido cliente 1', 11111111),
('nombre cliente 2', 'apellido cliente 2', 22222222),
('nombre cliente 3', 'apellido cliente 3', 33333333),
('nombre cliente 4', 'apellido cliente 4', 44444444),
('nombre cliente 5', 'apellido cliente 5', 55555555);

INSERT INTO orders (customer_id, employee_id, order_date, total_amount) values
(1, 1, '2023-10-10', 36.50),
(2, 2, '2023-12-08', 12.20),
(3, 1, '2023-12-12', 6.50),
(4, 4, '2023-10-10', 80.20),
(5, 2, '2023-10-10', 15.30),
(5, 3, '2023-10-10', 125.10);



