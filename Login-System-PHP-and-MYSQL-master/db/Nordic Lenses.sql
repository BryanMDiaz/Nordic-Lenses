create database Nordic_Lenses

use Nordic_Lenses

create table Usuario(
Correo varchar(50) constraint Pk_Correo primary key,
Contrasena varchar(50)
)

create table RegistroCompra(
NombreCompleto varchar(50),
Correo varchar(50) constraint Fk_Correo foreign key references Usuario(Correo),
Mensaje varchar(100),
sujeto varchar(25)
)

insert into Usuario(Correo,Contrasena) values ('BryanDiaz@gmail.com','1234')
insert into Usuario(Correo,Contrasena) values ('EsmeraldaMendez@gmail.com','1234')
insert into Usuario(Correo,Contrasena) values ('JoseReyes@gmail.com','1234')
insert into Usuario(Correo,Contrasena) values ('FernandoHernandez@gmail.com','1234')
insert into Usuario(Correo,Contrasena) values ('DanielMolina@gmail.com','1234')

insert into RegistroCompra(NombreCompleto,Correo,Mensaje,sujeto) values ('Bryan Ezequiel Diaz Martinez ','BryanDiaz@gmail.com',' ','M')
insert into RegistroCompra(NombreCompleto,Correo,Mensaje,sujeto) values ('Lorena Esmeralda Mendez Chulo ','EsmeraldaMendez@gmail.com',' ','F')
insert into RegistroCompra(NombreCompleto,Correo,Mensaje,sujeto) values ('Jose Carlos Reyes Aguilar ','JoseReyes@gmail.com',' ','M')
insert into RegistroCompra(NombreCompleto,Correo,Mensaje,sujeto) values ('Fernando Antonio Hernandez Perez ','FernandoHernandez@gmail.com',' ','M')
insert into RegistroCompra(NombreCompleto,Correo,Mensaje,sujeto) values ('Daniel Ernesto Molina Perez ','DanielMolina@gmail.com',' ','M')

Create proc SP_agregar_Usuario
@Correo varchar(50),
@Contrasena varchar(50)
as 
insert into Usuario(Correo,Contrasena) values(@Correo,@Contrasena)
Print 'Registro Ingresado Correctamente.'

create proc Sp_Eliminar_Usuario
@Correo varchar(50)
as 
Delete from Usuario where Correo = @Correo
Print 'Reguistro Eliminado Correctamente.'

create proc SP_Actualizar_Usuario
@Correo varchar(50),
@Contrasena varchar(50)
as 
update Usuario set Correo =@Correo, Contrasena=@Contrasena
Print 'Reguistro Actualizado Correctamente.'

create proc Sp_agregar_RegistroCompra
@NombreCompleto varchar(50),
@Correo varchar(50),
@Mensaje varchar(100),
@sujeto varchar(25)
as 
insert into RegistroCompra(NombreCompleto,Correo,Mensaje,sujeto) values (@NombreCompleto,@Correo,@Mensaje,@sujeto)
Print 'Registro Ingresado Correctamente.'

create proc Sp_eliminar_RegistroCompra 
@Correo varchar(50)
as 
delete from RegistroCompra where Correo=@Correo
Print 'Reguistro Eliminado Correctamente.'

create proc Sp_actualizar_RegistroCompra 
@NombreCompleto varchar(50),
@Correo varchar(50),
@Mensaje varchar(100),
@sujeto varchar(25)
as 
update RegistroCompra set NombreCompleto= @NombreCompleto,Correo= @Correo,Mensaje= @Mensaje,sujeto= @sujeto
Print 'Reguistro Actualizado Correctamente.' 

