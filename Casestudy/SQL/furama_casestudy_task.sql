-- task2
select *
from employee
where (employee_name like 'H%' or employee_name like 'T%' or employee_name like 'K%') and length(employee_name) <= 15;

-- task3
select *
from customer
where address in ('DaNang','QuangTri') and (curdate() - date_of_birth > (18*30*365) and curdate() - date_of_birth < (50*30*365));

-- task4
select customer.customer_name, count(contract.id_contract) as book_time 
from customer join contract on customer.id_customer = contract.id_customer 
join type_customer on customer.id_customer_type = type_customer.id_customer_type
where type_customer.type_name = 'Diamond' group by customer.id_customer order by book_time;

-- task5
select customer.id_customer, customer.customer_name, type_customer.type_name, contract.id_contract, services.services_name, contract.day_start, contract.day_end, 
sum(services.cost + include_services.price * include_services.count) as total_pay
from customer
left join type_customer on customer.id_customer_type = type_customer.id_customer_type 
left join contract on customer.id_customer = contract.id_contract
left join services on contract.id_services = services.id_services
left join contract_information on contract.id_contract = contract_information.id_contract
left join include_services on contract_information.id_include_services = include_services.id_include_services
group by contract.id_contract;

-- task6
select services.id_services, services.services_name, services.area, services.cost, services_type.services_name
from services join services_type on services.services_name = services_type.services_name
where not exists (select contract.id_services from contract where (contract.day_start between '2019-01-01' and '2019-03-01') 
and contract.id_services = services.id_services);

-- task7
select services.id_services, services.services_name, services.area, services.cost, services_type.services_name
from services join services_type on services.services_name = services_type.services_name
where exists (select contract.id_contract from contract where year(contract.day_start) = '2018' and contract.id_contract = services.id_services)
and not exists (select contract.id_contract from contract where year(contract.day_start) = '2019' and contract.id_contract = services.id_services);

-- task8
-- cach1
select distinct customer.customer_name
from customer;

-- cach2
select customer_name
from customer
union
select customer_name
from customer;

-- cach3
select customer_name
from customer
group by customer_name;

-- task9
select temp.month, count(month(contract.day_start)) as customer_quantity, sum(contract.total_cost) as total_pay
from (select 1 as month
union select 2 as month 
union select 3 as month 
union select 4 as month 
union select 5 as month 
union select 6 as month 
union select 7 as month 
union select 8 as month 
union select 9 as month 
union select 10 as month 
union select 11 as month 
union select 12 as month) as temp
left join contract on month(contract.day_start) = temp.month
left join customer on customer.id_customer = contract.id_customer
where year(contract.day_start) = '2019' or year(contract.day_start) is null or month(contract.day_start) is null
group by temp.month
order by temp.month;


-- task10
select contract.id_contract, contract.day_start, contract.day_end, contract.deposits, count(contract_information.id_include_services) as books_time
from contract join contract_information on contract.id_contract = contract_information.id_contract
group by contract.id_contract;

-- task11
select include_services_name, price, count, is_in_use
from include_services join contract_information on include_services.id_include_services = contract_information.id_include_services
join contract on contract_information.id_contract = contract.id_contract
join customer on contract.id_customer = customer.id_customer
join type_customer on customer.id_customer_type = type_customer.id_customer_type
where type_customer.type_name = 'Diamond' and customer.address in ('Vinh', 'QuangNgai');

-- task12
select contract.id_contract, employee.employee_name, customer.customer_name, customer.phone_number, services.services_name, count(contract_information.quantity) as times_use, contract.deposits
from contract 
join employee on employee.id_employee = contract.id_employee
join customer on customer.id_customer = contract.id_customer
join services on services.id_services = contract.id_services
join contract_information on contract_information.id_contract = contract.id_contract
where exists (select contract.id_contract where contract.day_start between '2019-09-01' and '2019-12-31')
and not exists (select contract.id_contract where (contract.day_start between '2019-01-01' and '2019-06-31'));

-- task13
select *
from include_services
where (count) in (select max(count) from include_services); 

-- task14
select contract.id_contract, services_type.services_name, include_services.include_services_name, include_services.count
from include_services
join contract_information on contract_information.id_include_services = include_services.id_include_services
join contract on contract.id_contract = contract_information.id_contract
join services on services.id_services = contract.id_services
join services_type on services_type.id_services_type = services.id_services_type
where count = 1;

-- task15
select employee.id_employee, employee.employee_name, employee_level.level_name, employee_department.department_name, employee.phone_number, employee.address, count(contract.id_employee) as times_book
from contract_information 
join contract on contract.id_contract = contract_information.id_contract
join employee on employee.id_employee = contract.id_employee
join employee_department on employee.id_department = employee_department.id_department
join employee_level on employee.id_level = employee_level.id_level
where day_start between '2018-01-01' and '2019-12-31'
group by employee.id_employee
having times_book <= 3;

-- task16
delete from employee 
where not exists (select contract.id_employee
from contract 
where day_start between '2017-01-01' and '2019-12-31'
group by contract.id_employee
having count(contract.id_employee)  > 0);


