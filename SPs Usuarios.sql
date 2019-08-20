use Applibros
select * from Usuarios

--CONSULTA   

CREATE PROCEDURE SeleccionarUsuarios  
AS
SELECT * FROM Usuarios 
GO;


DROP PROCEDURE InsertarLibros ;  
GO 

--CONSULTA ID

CREATE PROCEDURE SeleccUsuario @usr nvarchar(30), @pwd nvarchar (30) 
AS
SELECT * FROM Usuarios WHERE Username = @usr and Password = @pwd
GO

------INSERTAR USUARIO 
 
CREATE PROCEDURE InsertarUsuario (@nombre nvarchar (30), 
@apellidos nvarchar (30), @correo nvarchar (30), 
@username nvarchar (30),@password nvarchar (30), 
@rol nvarchar (30)) 
AS
BEGIN 
INSERT INTO Usuarios(Nombre, Apellidos, Correo, Username, Password, Rol)
values (@nombre, @apellidos, @correo, @username, @password, @rol)
END
GO


 -----------ELIMINAR Usuario

CREATE PROCEDURE  EliminarUsuario
(@Id int)
AS
DELETE FROM Usuarios
where @Id = IdUsuario
GO

----------------ACTUALIZA LIBRO

CREATE PROCEDURE ActualizarUsuario         
(@nombre nvarchar(30), @id int,@apellidos nvarchar (30), 
@correo nvarchar (30),@username nvarchar (30), @password nvarchar (30),
@rol nvarchar (30)) 
AS
UPDATE Usuarios SET Nombre = @nombre, @apellidos = Apellidos,
 @correo = Correo, @username = Username, @password =Password,
 @rol=Rol
where IdUsuario = @id
GO



