drop database if exists transaction;

create database transaction;

use transaction;

create table customers (
customer_number int  not null primary key,
full_name varchar(50),
address varchar(50),
email varchar(50),
phone_number varchar(50)
);

create table accounts (
account_number int not null primary key,
account_type varchar(25),
start_date date,
balance int,
customer_number int,

foreign key (customer_number) references customers (customer_number)
);


create table transactions (
tran_number int not null primary key,
account_number int,
tran_date date,
amounts int,
descriptions varchar(50),

foreign key (account_number) references accounts (account_number)
);
