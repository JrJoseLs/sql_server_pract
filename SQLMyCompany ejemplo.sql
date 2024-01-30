create database MyCompany
go
Use MyCompany
go

create table Users(
UserID int identity (1,1) primary key,
LoginName nvarchar (100) unique not null,
Password nvarchar (100) not null, 
FirstName nvarchar (100) not null, 
LastName nvarchar (100) not null,
Position nvarchar (100) not null,
Email nvarchar (150) not null, 
)

insert into Users values ('admin', 'admin', 'Jackson', 'Collins', 'Administrador', 'Support@systemAll.biz')
insert into Users values ('Ben', 'abc123456', 'Benjamin', 'Thompson', 'Manager', 'BenThompson@MyCompany.com')
insert into Users values ('Kathy', 'abc123456', 'Katherine', 'Smith', 'CFO', 'KathySmith@MyCompany.com')

select *from Users