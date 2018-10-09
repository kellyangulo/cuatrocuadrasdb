create database CuatroCuadras
go
use CuatroCuadras
go

create table Ciudad(
	ID int identity,
	Nombre varchar (20) not null,
)
alter table Ciudad
add constraint PK_CiudadID primary key(ID)

create table Categoria(
	ID int identity,
	Nombre varchar (20) not null,
)
alter table Categoria
add constraint PK_CategoriaID primary key(ID)

create table Etiqueta(
	ID int identity,
	Nombre varchar (20) not null,
)
alter table Etiqueta
add constraint PK_EtiquetaID primary key(ID)

create table Interes( ----no  se hhizo la machaccaaaaaaaaaaaaa
	ID int identity,
	Nombre varchar (20) not null,
)
alter table Interes
add constraint PK_InteresID primary key(ID)

create table Lugar(
	ID int identity,
	Nombre varchar (30) not null,
	Latitud decimal (10,10) not null,
	Longitud decimal (10,10) not null,
	Categoria_ID int not null,
	Descripcion text
)
alter table Lugar
add constraint PK_LugarID primary key(ID)

alter table Lugar
add constraint FK_Lugar_CategoriaID foreign key (Categoria_ID) references Categoria(ID)

create table LugarEtiqueta(
	Lugar_ID int not null,
	Etiqueta_ID int not null
)
alter table LugarEtiqueta
add constraint FK_LugarEtiqueta_LugarID foreign key (Lugar_ID) references Lugar(ID)

alter table LugarEtiqueta
add constraint FK_LugarEtiqueta_EtiquetaID foreign key (Etiqueta_ID) references Etiqueta(ID)

create table Usuario(
	ID int identity,
	Nombre varchar(20) not null,
	[Apellido Paterno] varchar(20) not null,
	UserName varchar(40) not null,
	Email varchar (100) not null,
	Contrasena varchar (35) not null,
	Ciudad_ID int
)
alter table Usuario
add constraint PK_UsuarioID primary key(ID)

alter table Usuario
add constraint FK_Usuario_CiudadID foreign key (Ciudad_ID) references Ciudad(ID)

create table Insignia(
	ID int identity,
	Nombre varchar (30) not null,
	Cantidad smallint not null,
	Periodo date not null,
	Etiqueta_ID int,
	Categoria_ID int,
)
alter table Insignia
add constraint PK_InsigniaID primary key(ID)

alter table Insignia
add constraint FK_Insignia_EtiquetaID foreign key (Etiqueta_ID) references Etiqueta(ID)

alter table Insignia
add constraint FK_Insignia_CategoriaID foreign key (Categoria_ID) references Categoria(ID)

create table Solicitud(
	ID int identity,
	[Usuario Origen] int not null,
	[Usuario Destino] int not null,
	Fecha date not null,
	Estatus bit not null,
)
alter table Solicitud
add constraint PK_SolicitudID primary key(ID)

alter table Solicitud
add constraint FK_Solicitud_Usuario_Origen foreign key ([Usuario Origen]) references Usuario(ID)

alter table Solicitud
add constraint FK_Solicitud_Usuario_Destino foreign key ([Usuario Destino]) references Usuario(ID)


create table CheckIn(
	Usuario_ID int not null,
	Lugar_ID int not null,
	[Fecha Hora] datetime not null,
	Valoracion tinyint,
	Resena text,
)
alter table CheckIn
add constraint FK_CheckIn_UsuarioID foreign key (Usuario_ID) references Usuario(ID)

alter table CheckIn
add constraint FK_CheckIn_LugarID foreign key (Lugar_ID) references Lugar(ID)

create table LogroUsuario(
	Insignia_ID int not null,
	Usuario_ID int not null,
	[Fecha Hora] datetime not null,
)
alter table LogroUsuario
add constraint FK_LogroUsuario_InsigniaID foreign key (Insignia_ID) references Insignia(ID)

alter table LogroUsuario
add constraint FK_LogroUsuario_UsuarioID foreign key (Usuario_ID) references Usuario(ID)

create table UsuarioInteres(
	Usuario_ID int not null,
	Interes_ID int not null,
)
alter table UsuarioInteres
add constraint FK_UsuarioInteres_UsuarioID foreign key (Usuario_ID) references Usuario(ID)

alter table UsuarioInteres
add constraint FK_UsuarioInteres_InteresID foreign key (Interes_ID) references Interes(ID)
