CREATE DATABASE restaurant;
use restaurant;
CREATE TABLE IF NOT EXISTS dishes(
dish_id INT AUTO_INCREMENT PRIMARY KEY,
dish_name VARCHAR (50),
description TEXT,
price NUMERIC (4, 2)
);
--  FALTA POSITION (PREGUNTAR A QUE SE REFIERE)

CREATE TABLE IF NOT EXISTS employees(
employee_id INT AUTO_INCREMENT PRIMARY KEY,
first_name VARCHAR (50),
last_name VARCHAR (50),
position varchar (50),
salary NUMERIC (6, 2)
);

CREATE TABLE customers(
customer_id int auto_increment primary key,
first_name varchar(50),
last_name varchar(50),
contact_info int
);

CREATE TABLE orders(
order_id int auto_increment primary key,
foreign key (customer_id) references customers(customer_id),
foreign key (empleyee_id) references employees(employee_id),
order_date date,
total_amount decimal(6, 2)
);

CREATE TABLE order_details(
foreign key (order_by) references orders(order_by),
foreign key (dish_id) references dishes(dish_id),
quantity int,
price decimal(6, 2)
);



