create database ConsultaFlexible
go

use ConsultaFlexible
go

create table Empleados
(
cod_emp char(5) primary key not null,
usr_nom varchar(50),
usr_direccion varchar (50),
fecha_ing date,
fecha_ter date,
ar_trabajo char (1)
)
go

---------Listar------------------------
create proc pb_listar
as
select * from Empleados
go

-----------Registrar-----------------
create proc pb_nuevo
@nombre varchar (50),
@direccion varchar,
@fechaing date,
@fechater date,
@area char(1)
as
declare @codigonuevo varchar (5)
set @codigonuevo= (select MAX(cod_emp) from Empleados)
set @codigonuevo= 'E' + RIGHT ('0000' + LTRIM (right(isnull(@codigonuevo, '0000'),4)+1),4)
insert into Empleados values (@codigonuevo,@nombre,@direccion,@fechaing,@fechater,@area)
---------Eliminar----------------
Create proc pb_eliminar
@codigo char (5)
as
delete from Empleados where cod_emp=@codigo
go

------------Modificar-------------------
create proc pb_modificar
@codigo char (5),
@nombre varchar (50),
@direccion varchar,
@fechaing date,
@fechater date,
@area char(1)
as
update Empleados set usr_nom=@nombre,usr_direccion=@direccion,fecha_ing=@fechaing,fecha_ter=@fechater,ar_trabajo=@area
where cod_emp=@codigo
go

------------DATOS-----------------
Insert into Empleados values ('A0001', 'Paul, Manuel Espinoza', 'Calle las orquidias 256 Monterrico', '2013-05-05', '2013-10-06', 2)
Insert into Empleados values ('A0002', 'Emrrique, Peña Nieto', 'Calle Luperon 301 Playa', '2016-03-04', '2018-10-07', 1)
Insert into Empleados values ('A0003', 'George, Jimenez Cason', 'Calle las pacarelas 150 TOMASION', '2014-10-03', '2016-09-05', 3)
Insert into Empleados values ('A0004', 'Manuela, Menendez Rios', 'Calle las Yatusabe 175 PORAI', '2019-04-05', '2022-10-08', 6)
Insert into Empleados values ('A0005', 'Jay, ZZZ Carbajal', 'Calle Paradera 111 Nosedonde', '2015-05-05', '2019-10-06', 7)
Insert into Empleados values ('A0006', 'Wiz, Kali Khalifa', 'Calle Weed Everyday 157 SmokOne', '2011-05-05', '2021-10-06', 4)
Insert into Empleados values ('A0007', 'Alexa, Espinoza Perez', 'Calle las Deperder 551 Maraton', '2013-07-05', '2016-10-09', 1)
Insert into Empleados values ('A0008', 'Madelin, Mora Donmark', 'Calle las Terrenas 120 Montesal', '2014-10-01', '2017-03-02', 1)
Insert into Empleados values ('A0009', 'Melissa, Cereza Pastel', 'Calle los Bizcochos 271 Pastelero031', '2018-03-05', '2020-10-06', 2)
Insert into Empleados values ('A0010', 'Little, Bell Roockie', 'Calle los Pequeños 301 Bastorias', '2013-04-09', '2019-02-04', 2)
go

exec pb_listar
go