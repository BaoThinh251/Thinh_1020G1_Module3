drop database if exists furama;

create database furama;

use furama;

create table employee_position(
id_position int not null primary key, 
position_name varchar(50)
);

 create table employee_level(
 id_level int not null primary key,
 level_name varchar(50)
 );

create table employee_department(
id_department int not null primary key,
department_name varchar(50)
);

create table employee (
id_employee INT not null primary key, 
employee_name varchar(50), 
id_position INT, 
id_level INT, 
id_department INT,
date_of_birth date, 
id_of_employee varchar(50),
salary varchar(50),
phone_number varchar(50),
email varchar(50),
address varchar(50),

foreign key (id_position) references employee_position (id_position),
foreign key (id_level) references employee_level (id_level),
foreign key (id_department) references employee_department (id_department)
);

create table type_customer (
id_customer_type int not null primary key,
type_name varchar(50)
);

create table customer (
id_customer int not null primary key,
id_customer_type int,
customer_name varchar (50),
date_of_birth date,
id_of_customer varchar(50),
phone_number varchar(50),
email varchar(50),
address varchar(50),

foreign key (id_customer_type) references type_customer (id_customer_type)
);

create table rent_type (
id_rent_type int not null primary key,
rent_type_name varchar(50),
cost int
);

create table services_type (
id_services_type int not null primary key,
services_name varchar(50)
);

create table services (
id_services int not null primary key,
services_name varchar(50),
area int,
floor int,
max_person int,
cost int,
id_rent_type int,
id_services_type int,
status varchar(50),

foreign key (id_rent_type) references rent_type (id_rent_type),
foreign key (id_services_type) references services_type (id_services_type)
);

create table contract(
id_contract int not null primary key,
id_employee int,
id_customer int,
id_services int,
day_start date,
day_end date,
deposits int,
total_cost int,

foreign key (id_employee) references employee (id_employee),
foreign key (id_customer) references customer (id_customer),
foreign key (id_services) references services (id_services)
);

create table include_services (
id_include_services int not null primary key,
include_services_name varchar(50),
price int,
count int,
is_in_use varchar(5)
);

create table contract_information (
id_information_contract int not null primary key,
id_contract int,
id_include_services int,
quantity int,

foreign key (id_include_services) references include_services (id_include_services),
foreign key (id_contract) references contract (id_contract)
);



