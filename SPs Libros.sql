Use Applibros
select * from Libros

--CONSULTA  

CREATE PROCEDURE SeleccionarLibros   
AS
SELECT * FROM Libros 
GO;

--CONSULTA ID

CREATE PROCEDURE SeleccLibros @id int  
AS
SELECT * FROM Libros WHERE IdLibro = @id
GO


 ------INSERTAR LIBRO 

 
 CREATE PROCEDURE InsertarLibros (@titulo nvarchar (30),
 @autor nvarchar (30), @descripcion nvarchar (30), 
 @totalPaginas int, @precio money) 
AS
BEGIN 
INSERT INTO Libros(Titulo, Autor, Descripcion, TotalPaginas, Precio)
 values (@titulo, @autor, @descripcion, @totalPaginas, @precio)
END
GO


-----------ELIMINAR LIBRO

CREATE PROCEDURE  Eliminarlibro 
(@Id int)
AS
DELETE FROM Libros
where @Id = IdLibro
GO


----------------ACTUALIZA LIBRO

CREATE PROCEDURE ActualizarLibro 
(@titulo nvarchar(30),@autor nvarchar (30), 
@descripcion nvarchar (30),@totalpaginas int, @id int,@precio money) 
AS
UPDATE Libros SET @titulo = Titulo, @autor = Autor, @precio=Precio, @descripcion = Descripcion, @totalpaginas = TotalPaginas 
where IdLibro = @id
GO






