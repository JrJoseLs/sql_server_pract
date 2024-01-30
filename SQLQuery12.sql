create proc Dashboard
@totVentas float out,
@nprod int out,
@nmarc int out,
@ncatg int out,
@nclient int out,
@nprove int out,
@nemple int out
as
set @totVentas = (select sum(TOTAL) as TotVentas from VENTAS)
set @nprod = (select count(ID) as CantProd from PRODUCTOS)
set @ncatg = (select count(ID) as CantCateg from CATEGORIAS)
set @nmarc = (select count(ID) as CantMAC from MARCAS)
set @nemple = (select count(ID) as CanEmple from EMPLEADOS)
set @nprove = (select count(ID) as CanProve from PROVEEDORES)
set @nclient = (select count(ID) as CanClient from CLIENTES)
go

------TOP 5 PRODUCTOS PREFERIDOS - MAS VENDIDOS 
create proc ProdPreferidos
as
Select Top 5 C.CATEGORIA+' '+M.MARCA +' '+P.DESCRIPCION as Producto , COUNT(ID_PRODUCTO ) AS nroVentas 
from DETALLE_VENTA 
inner join PRODUCTOS AS P ON P.ID =DETALLE_VENTA.ID_PRODUCTO 
inner join CATEGORIAS as C ON C.ID = P.ID_CATEGORIA 
inner join MARCAS AS M ON M.ID = P.ID_MARCA 
Group by ID_PRODUCTO,P.DESCRIPCION,C.CATEGORIA,M.MARCA    
Order by count(5) desc
go
----------------------CANTIDAD DE PRODUCTOS POR CATEGORIA
create proc ProdPorCategoria2
as
select C.CATEGORIA  , COUNT(ID_CATEGORIA ) as nroProductos
from 
productos as P 
inner join CATEGORIAS as C ON C.ID=P.ID_CATEGORIA 
group by C.CATEGORIA
order by count(2) DESC
go