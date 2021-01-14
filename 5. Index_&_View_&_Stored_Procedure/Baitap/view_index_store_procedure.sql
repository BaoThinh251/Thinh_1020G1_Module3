drop database if exists demo;

create database demo;

use demo;

CREATE TABLE products (
    id INT,
    product_code VARCHAR(50),
    product_name VARCHAR(20),
    product_price INT,
    product_amount INT,
    product_description VARCHAR(50),
    product_status VARCHAR(50)
);

insert into products
values (1, '001', 'product1', 500, 10, 'des1', 'on');

create unique index product_code_index
on products (product_code);

create index name_price
on products (product_name, product_price);

CREATE VIEW product AS
    SELECT 
        product_code, product_name, product_price, product_status
    FROM
        products;

CREATE OR REPLACE VIEW product AS
    SELECT 
        product_code, product_name, product_price
    FROM
        products
    WHERE
        product_code = '001';

drop view product;

SELECT 
    *
FROM
    products;products

DELIMITER //
create procedure Get_all_products()
begin
	select * 
    from products;
end; //
DELIMITER ;

DELIMITER //
create procedure add_new_product (
id int,
product_code varchar(50),
product_name varchar(20),
product_price int,
product_amount int,
product_description varchar(50),
product_status varchar(50))
begin
	insert into products
    values (id, 
    product_code,
	product_name,
	product_price,
	product_amount,
	product_description,
	product_status );
end; //
DELIMITER ;

call add_new_product (2, '002', 'product2', 500, 10, 'asd', 'asdf');

DELIMITER //
create procedure edit_product (
id int,
product_name varchar(20)) 
begin 
	update products
    set products.product_name = product_name
    where products.id = id;
end; //
DELIMITER ;
    
call edit_product (2, 'product_n');

DELIMITER //
create procedure delete_product (
id int) 
begin 
	delete 
    from products
    where products.id = id;
end; //
DELIMITER ;

call delete_product(1);