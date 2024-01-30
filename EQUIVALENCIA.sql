GO
#--VENTA.PAISES
SELECT * FROM [dbo].[Categories] --VENTA.Categorias
SELECT * FROM [dbo].[Customers] --VENTA.CLIENTES
SELECT * FROM [dbo].[Suppliers] --COMPRA.PROVEEDORES
SELECT * FROM [dbo].[Products] --COMPRA.PRODUCTOS
--RRHH.CARGOS
SELECT * FROM [dbo].[Territories] --RRHH.DISTRITOS
SELECT * FROM [dbo].[Employees] --RRHH.EMPLEADOS
SELECT * FROM [dbo].[Orders] --PedidosCabe
WHERE OrderID = 10248
SELECT * FROM [dbo].[Order Details] --PedidosDeta
WHERE OrderID = 10248