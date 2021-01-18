insert into employee_position
values 	(1,'Reception'),
		(2,'Room Attendant'),
		(3,'Manager'),
		(4,'Cleaner'),
		(5,'House Keeping');
insert into employee_level
values 	(1,'University'),
		(2,'Colleges'),
		(3,'Middle School');
insert into employee_department
values 	(1,'RECEPTION'),
		(2,'EMPLOYEE'),
		(3,'ADMINISTRATOR');
insert into include_services
values
(1,'Massage',500000,'on'),
(2,'Karaoke',300000,'on'),
(3,'Baverage',100000,'on'),
(4,'Gym',150000,'on'),
(5,'Car',1000000,'on');
insert into services_type
values
(1,'Vip'),
(2,'Normal'),
(3,'Value');
insert into rent_type
values
(1,'Villa',5000000),
(2,'House',2000000),
(3,'Room',700000);
insert into services
values
(1,'Villa',500,2,20,5000000,1,1,'on'),
(2,'House',100,0,10,2000000,2,2,'on'),
(3,'Room',70,4,20,700000,3,3,'on');
insert into type_customer
values
(1,'Diamond'),
(2,'Platinium'),
(3,'Gold'),
(4,'Silver'),
(5,'Member');
insert into customer
values
(1,1,'John','1988-07-13','801991567','0905123123','john@gmail.com','USA'),
(2,5,'Emma','1983-07-22','694017118','0905123456','emma@gmail.com','Canada'),
(3,3,'Lizzy','1992-05-11','318904549','0905123789','lizzy@gmail.com','England'),
(4,4,'Hoomer','1995-01-11','468671868','0905123654','hommer@gmail.com','Finland'),
(5,3,'Bart','1991-12-22','139849468','0905456456','bart@gmail.com','France'),
(6,2,'Magaret','1995-01-11','673358542','0905123654','margaret@gmail.com','Sweden'),
(7,3,'Leo','1995-01-11','875412850','0905123654','leo@gmail.com','Switzerland'),
(8,5,'Morgan','1995-01-11','674848138','0905123654','morgan@gmail.com','Autralia'),
(9,4,'Moe','1995-01-11','233830867','0905123654','moe@gmail.com','Czech_Republic'),
(10,4,'Hanh','1995-01-11','233830995','0905445654','hanh@gmail.com','DaNang');
insert into employee
values
(1,'Kien',1,1,1,'1991-02-21','123456789',12000000,'0905123456','kien@gmai.com','13 Đống Đa'),
(2,'Han',2,2,2,'1999-03-14','123879456',10000000,'0905123654','han@gmail.com','123 Đỗ Quang'),
(3,'Thanh',3,1,3,'1994-05-17','456123798',15000000,'0972151235','thanh@gmail.com','22 Lê Độ'),
(4,'Dung',4,3,2,'1997-05-25','123123798',7000000,'0972151111','dung@gmail.com','22 3 tháng 2'),
(5,'Dung',5,3,2,'1997-07-14','123123123',8000000,'0972151222','tiendung@gmail.com','22 Đống Đa'),
(6,'Linh',1,2,2,'1998-01-27','123123456',12000000,'0972151333','linh@gmail.com','22 Ngô Quyền'),
(7,'Truong',4,2,2,'1993-09-18','123123654',7000000,'0972151444','truong@gmail.com','22 2/9'),
(8,'Linh',5,3,2,'1997-02-09','123123789',8000000,'0972151555','linh1@gmail.com','22 Nguyễn Văn Linh'),
(9,'Hau',4,2,2,'2000-01-18','123465456',7000000,'0972151445','hau@gmail.com','22 Đõ Bá'),
(10,'Truc',1,1,1,'1993-09-22','123456465',1200000,'0972151446','truc@gmail.com','22 Bùi Tá Hán');
insert into contract
values
(1,2,1,1,'2018-01-11','2019-03-15',1000000),
(2,7,2,2,'2019-02-15','2020-04-22',500000),
(3,6,3,3,'2019-03-01','2019-05-11',400000),
(4,9,4,1,'2018-09-22','2020-11-11',450000),
(5,7,5,3,'2017-02-28','2020-04-22',300000),
(6,2,6,1,'2020-01-11','2020-03-11',350000),
(7,9,7,3,'2016-02-22','2020-04-22',250000),
(8,6,8,2,'2018-03-31','2020-06-11',375000),
(9,6,9,3,'2019-03-31','2021-06-11',375000),
(10,6,1,3,'2017-03-31','2019-06-11',375000),
(11,6,2,3,'2018-03-31','2020-06-11',375000),
(12,6,3,3,'2018-03-31','2019-06-11',375000);
insert into contract_information
values
(1,1,1,1),
(2,2,2,2),
(3,3,3,1),
(4,4,4,2),
(5,5,5,1),
(6,1,4,1),
(7,3,5,3),
(8,5,3,2),
(9,7,1,3),
(10,4,1,3),
(11,3,1,1);
