drop database if exists customer_management;

create database customer_management;

use customer_management;

create table offices (
	offices_id int primary key ,
    address varchar(50),
    phone_number int,
    country varchar(50)
);

create table employees (
	employee_id int primary key,
	employee_name varchar(50),
	email varchar(50),
    employee_work_for varchar(50),
    offices_id int,
    
    foreign key (offices_id) references offices (offices_id)
);

create table customers(
	customer_id int primary key ,
    customer_name varchar(50),
    phone_number int ,
    customer_address varchar(50),
    employee_id int,
    
    foreign key (employee_id) references employees (employee_id)
);

create table payments (
	payment_id int ,
    payment_date date ,
    payment_price int,
    customer_id int,
    
    foreign key (customer_id) references customers (customer_id)
);

create table productsline (
	productline_id int primary key,
	descriptions varchar(50)
);

create table products (
	product_id int primary key ,
    product_name varchar(50),
    production varchar(50),
    amount int,  -- so luong
    import_price double,
    export_price double,
    productline_id int,
    
    foreign key (productline_id) references productsline (productline_id)
);

create table orders (
	order_id int primary key,
    date_buy date ,
    Request_date date, -- ngay yeu cau giao hang
	actual_date date ,  -- ngay giao hang thuc te
	number_order int ,
    price int ,
    customer_id_customer int,
    product_id int,
    
    foreign key (customer_id_customer) references customers (customer_id), 
	foreign key (product_id) references products (product_id)
);

