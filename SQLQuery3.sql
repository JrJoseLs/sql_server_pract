USE Northwind 

GO

CREATE FUNCTION F04_MESES(@M1 INT) RETURNS VARCHAR(20)

AS

BEGIN

DECLARE @M INT, @MES VARCHAR(20)

SET @M = ISNULL(@M1,1)

SET @MES = (CASE @M

 WHEN 1 THEN 'ENERO'

 WHEN 2 THEN 'FEBRERO'

 WHEN 3 THEN 'MARZO'

 WHEN 4 THEN 'ABRIL'

 WHEN 5 THEN 'MAYO'

 WHEN 6 THEN 'JUNIO'

 WHEN 7 THEN 'JULIO'

 WHEN 8 THEN 'AGOSTO'

 WHEN 9 THEN 'SETIEMBRE'

 WHEN 10 THEN 'OCTUBRE'

 WHEN 11 THEN 'NOVIEMBRE'

 WHEN 12 THEN 'DICIEMBRE'

 ELSE 'NO ES MES VALIDO'

 END)



--PRINT @MES

RETURN @MES

END