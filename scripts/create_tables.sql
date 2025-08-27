-- Create pizzas table

drop table if exists pizzas

create table pizzas(
	pizza_id varchar(80) unique not null,
	pizza_type_id varchar(80),
	size varchar(10),
	price numeric(10,2)
);

-- Create pizza_types table

drop table if exists pizza_types

create table pizza_types(
	pizza_type_id varchar(80),
	name varchar(100),
	category varchar(50),
	ingredients varchar(300)
);

-- Create orders table

drop table if exists orders

create table orders(
	order_id int primary key,
	"date" date,
	"time" time
);

-- Create order_details table

drop table  if exists order_details

create table order_details(
	order_details_id int primary key,
	order_id int not null,
	pizza_id varchar(100),
	quantity int
);