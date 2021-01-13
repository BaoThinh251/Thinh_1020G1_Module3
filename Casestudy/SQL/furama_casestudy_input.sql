insert into employee_position
values (1,'Lễ Tân'),
	   (2,'Nhân Viên'),
       (3,'Tiếp Tân'),
       (4,'Quản Lý'),
       (5,'Dọn vệ sinh');
insert into employee_level
values (1,'Đại Học'),
	   (2,'Cao Đẳng'),
       (3,'Trung Cấp');
insert into employee_department
values (1,'Chăm sóc khách hàng'),
	   (2,'Lễ Tân'),
       (3,'Nhà Hàng'),
       (4,'Spa'),
       (5,'Buồng phòng');
insert into include_services
values
(1,'Massage',50,1,'on'),
(2,'Karaoke',100,2,'on'),
(3,'Baverage',30,3,'on'),
(4,'Gym',70,4,'on'),
(5,'Car',120,5,'on');
insert into services_type
values
(1,'Vip'),
(2,'Normal');
insert into rent_type
values
(1,'Villa',300),
(2,'House',200),
(3,'Room',100);
insert into services
values
(1,'Ẩm Thực',200,3,150,300,1,1,'on'),
(2,'Spa',100,2,30,200,1,2,'on'),
(3,'Gym',70,2,20,150,3,1,'on'),
(4,'Club',200,2,100,200,1,1,'on'),
(5,'Bar',100,0,60,100,3,2,'on');
insert into type_customer
values
(1,'Diamond'),
(2,'Platinium'),
(3,'Gold'),
(4,'Silver'),
(5,'Member');
insert into customer
values
(1,1,'Cao Bá Thắng','1988-07-13','123123123','0905123123','thang@gmail.com','DaNang'),
(2,2,'Lý Thông','1983-07-22','123123456','0905123456','thong@gmail.com','QuangTri'),
(3,3,'Quách Tỉnh','1992-05-11','123123789','0905123789','tinh@gmail.com','DaNang'),
(4,4,'Hoàng Dung','1995-01-11','123456789','0905123654','dung@gmail.com','Hue'),
(5,5,'Dương Quá','1991-12-22','456123456','0905456456','qua@gmail.com','Vinh');
insert into employee
values
(1,'Kiên',1,1,2,'1991-02-21','123456789',350,'0905123456','asda@gmai.com','13 Đống Đa'),
(2,'Hân',2,2,3,'1999-03-14','123879456',250,'0905123654','han@gmail.com','123 Đỗ Quang'),
(3,'Thanh',2,2,4,'1994-05-17','456123798',300,'0972151235','thanh@gmail.com','22 Lê Độ'),
(4,'Dũng',4,1,3,'1997-05-25','123123798',500,'0972151111','dung@gmail.com','22 3 tháng 2'),
(5,'Dụng',1,2,5,'1997-07-14','123123123',300,'0972151222','tiendung@gmail.com','22 Đống Đa'),
(6,'Linh',2,2,1,'1998-01-27','123123456',400,'0972151333','linh@gmail.com','22 Ngô Quyền'),
(7,'Trường',4,1,3,'1993-09-18','123123654',700,'0972151444','truong@gmail.com','22 2/9'),
(8,'Linh',2,2,4,'1997-02-09','123123789',400,'0972151555','linh1@gmail.com','22 Nguyễn Văn Linh'),
(9,'Hậu',5,3,5,'2000-01-18','123465456',300,'0972151445','hau@gmail.com','22 Đõ Bá'),
(10,'Trúc',5,3,5,'1993-09-22','123456465',300,'0972151446','truc@gmail.com','22 Bùi Tá Hán');
insert into contract
values
(1,2,1,1,'2019-01-11','2019-03-15',300,1000),
(2,3,2,2,'2019-02-15','2019-04-22',400,900),
(3,6,3,3,'2019-03-01','2019-05-11',400,1100),
(4,8,4,4,'2020-09-22','2020-11-11',450,1000),
(5,8,5,5,'2020-02-28','2020-04-22',300,800),
(6,2,1,1,'2020-01-11','2020-03-11',350,800),
(7,3,2,2,'2020-02-22','2020-04-22',250,650),
(8,6,3,3,'2020-03-31','2020-06-11',375,700);
insert into contract_information
values
(1,1,1,3),
(2,2,2,4),
(3,3,3,2),
(4,4,4,6),
(5,5,5,1);