CREATE DATABASE Applibros;
use Applibros;

create table Libros(IdLibro int, Titulo varchar (30), 
Autor varchar (30),Descripcion varchar(30), 
TotalPaginas int, Precio Money);

drop table Libros;


Select * From Libros

Create table Usuarios(IdUsuario int, Nombre varchar (30), 
Apellidos varchar (40), Correo varchar(30), 
Username varchar (40), Password varchar (40), Rol varchar (30))

INSERT INTO Usuarios (IdUsuario,Nombre,Apellidos, Correo, Username, Password, Rol)
VALUES('1', 'KAREN', 'TORRES HUERTA', 'karen-yoana@hotmail.com', 'ktorres', '1234', 'Adm');

Select * From Usuarios


delete Usuarios;






