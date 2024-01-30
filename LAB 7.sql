USE NORTHWIND
GO

CREATE TABLE [dbo].[Asignaturas](
    [CODIGO] [varchar](7) NULL,
    [DESCRIPCION] [varchar](50) NULL,
    [CREDITOS] [decimal](18, 2) NULL
) ON [PRIMARY]

CREATE TABLE [dbo].[ASIGNATURAS_Log_Auditoria](
    [CODIGO] [varchar](7) NULL,
    [DESCRIPCION] [varchar](50) NULL,
    [CREDITOS] [decimal](18, 2) NULL,
    [Estatus] [char](1) NULL,
    [Fecha] [datetime] NULL,
    [Usuario] [varchar](12) NULL
) ON [PRIMARY]

CREATE TRIGGER [dbo].[iAsignaturas] 
   ON  [dbo].[Asignaturas] 
   AFTER INSERT
AS 
BEGIN
    -- SET NOCOUNT ON added to prevent extra result sets from
    -- interfering with SELECT statements.
    SET NOCOUNT ON;

    -- Insert statements for trigger here
insert into [dbo].[Asignaturas_Log_auditoria] (CODIGO, DESCRIPCION, CREDITOS, ESTATUS, FECHA, USUARIO)
select CODIGO, DESCRIPCION, CREDITOS,'I' as Estatus,GETDATE() as Fecha,USER as usuario from inserted;
END


-------------------------------------------------------------------------------------------
CREATE TRIGGER [dbo].[dAsignaturas]
   ON  [dbo].[Asignaturas] 
   AFTER DELETE
AS 
BEGIN
    SET NOCOUNT ON;

insert into [dbo].[Asignaturas_Log_auditoria] (CODIGO, DESCRIPCION, CREDITOS, ESTATUS, FECHA, USUARIO)
select CODIGO, DESCRIPCION, CREDITOS,'E' as Estatus,GETDATE() as Fecha,USER as usuario from deleted;
END
GO

-------------------------------------------------------------------------------------------
CREATE TRIGGER [dbo].[uAsignaturas] 
   ON  [dbo].[Asignaturas] 
   --INSTEAD OF 
   AFTER
   UPDATE
AS 
BEGIN
    SET NOCOUNT ON;

insert into [dbo].[Asignaturas_Log_auditoria]
select *,'A' as Estatus,GETDATE() as Fecha,USER as usuario from deleted; 
insert into [dbo].[Asignaturas_Log_auditoria]
select *,'D' as Estatus,GETDATE() as Fecha,USER as usuario from inserted;
END






--PUEBA 1
INSERT INTO Asignaturas VALUES ('ISO-700', 'SOFTWARE I', 3)

Select * from [dbo] . [Asignaturas]
Select * from [dbo] . [ASIGNATURAS_Log_Auditoria]

--PRUEBA 2
INSERT INTO Asignaturas VALUES ('ISO-500', 'SOFTWARE II', 3) 


Select * from [dbo] . [Asignaturas]
Select * from [dbo] . [ASIGNATURAS_Log_Auditoria]

DELETE FROM Asignaturas Where CODIGO = 'ISO-500'

--PRUEBA 3

INSERT INTO Asignaturas VALUES ('ISO-500', 'SOFTWARE II', 3) 


Select * from [dbo] . [Asignaturas]
Select * from [dbo] . [ASIGNATURAS_Log_Auditoria]

GO
UPDATE Asignaturas 
SET DESCRIPCION = 'SOFTWARE IV'
WHERE CODIGO = 'ISO-700'
GO