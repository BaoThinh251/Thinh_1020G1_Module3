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

-- task9

-- task10


-- task11
select *
from include_services 
where type_customer.type_name = 'Diamond' and customer.address in ('Vinh', 'QuangNgai');

-- task12
select contract.id_contract, employee.employee_name, customer.customer_name, customer.phone_number, services.services_name, contract_information.quantity, contract.deposits
from contract join employee on contract.id_employee = employee.id_employee
join customer on contract.id_customer = customer.id_customer
join services on contract.id_services = services.id_services
join contract_information on contract.id_contract = contract_information.id_contract
where exists (select contract.id_contract from contract where (contract.day_start between '2019-10-01' and '2019-12-01') and contract.id_contract = services.id_services)
and not exists (select contract.id_contract from contract where (contract.day_start between '2019-01-01' and '2019-09-01') and contract.id_contract = services.id_services);

-- task13
select *
from include_services
order by include_services.count desc;
