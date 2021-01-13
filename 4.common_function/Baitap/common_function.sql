create table hoc_vien (
id int,
ten varchar(15),
tuoi int,
khoa_hoc varchar(20),
so_tien int);

insert into hoc_vien (id, ten, tuoi, khoa_hoc, so_tien)
values (1, 'Hoang', 15, 'abc', 5000), (2, 'Hong', 20, 'bccv', 5000),
(3, 'Thanh', 21, 'asd', 5000), (4, 'Huong', 25, 'code', 4500), (4, 'Huong', 25, 'code' ,9000);

select *
from hoc_vien
where ten = 'Huong';

select sum(so_tien) as tong_so_tien
from hoc_vien
where ten = 'Huong'; 

select distinct ten
from hoc_vien;



