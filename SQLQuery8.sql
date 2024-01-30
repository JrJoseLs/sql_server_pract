USE [NORTHWIND]
GO
/****** Object:  UserDefinedFunction [dbo].[F01_PrecioPromedio]    Script Date: 14/07/2020 1:56:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO



ALTER FUNCTION [dbo].[F01_PrecioPromedio]() RETURNS DECIMAL

AS

BEGIN



DECLARE @Promedio DECIMAL

SELECT 

 @Promedio=AVG(UnitPrice)

FROM PRODUCTS 

RETURN @Promedio

END

Select * from Productos