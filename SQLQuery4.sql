USE NORTHWIND 
go


CREATE VIEW DETALLE_Empleados_Distritos_VIEW AS

SELECT

T1.ID_empleado,T1.Nombre_empleado,T1.ID_distrito,T2.ID_cargo,T2.Nombre_cargo

FROM Empleados AS T1

INNER JOIN Cargos AS T2 ON T1.ID_cargo = T2.ID_Cargo