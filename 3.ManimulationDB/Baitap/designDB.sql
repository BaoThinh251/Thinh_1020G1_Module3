-- create database library_management;
-- drop database library_management;

create table category (
category_id int not null primary key,
category_name varchar(20)
);

create table books (
book_id int not null primary key,
category_id int,

foreign key (category_id) references category (category_id)
);

create table borrow_order (
order_id int not null primary key,
book_id int,

foreign key (book_id) references books (book_id)
);

create table students (
student_number int not null primary key,
student_name varchar(30),
student_addrees varchar(50),
student_email varchar(30) unique,
order_id int,

foreign key (order_id) references borrow_order (order_id)
);