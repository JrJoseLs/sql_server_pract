CREATE VIEW DETALLE_Clientes_VIEW AS

SELECT 

T1.ID_CLIENTE,T1.Nombre_Cliente,T1.direccion_Cliente,T1.ID_Pais,T2.NOMBRE_PAIS,T1.Telefono_Cliente      

FROM Clientes AS T1

INNER JOIN Paises AS T2 ON T1.ID_Pais = T2.ID_Pais