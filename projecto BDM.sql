create  database PuntoDeVenta;

use PuntoDeVenta;
create table Usuario(
idUsuario int unsigned not null auto_increment primary key,
nombreUsuario varchar(25),
email varchar(50),
contraseña varchar(50),
apellidoMaternoUsuario varchar(25),
apellidoPaternoUsuario varchar(25),
tipoUsuario enum('Manager','Cajero'),
CURP varchar(18),
RFC varchar(50),
nivelDeEstudios enum('Universidad','Preparatoria','Secundaria','Primaria'),
idCiudad int unsigned not null,
calle varchar(10),
colonia varchar(25),
codigoPostal int,
fechaNacimiento date,
fotoUsuario mediumblob,

idSucursal int unsigned not null,

foreign key (idCiudad) references ciudad(idCiudad),
foreign key (idSucursal) references sucursal(idSucursal)
);

Create table empresa(
idEmpresa int unsigned not null auto_increment primary key,
nombreEmpresa varchar(25),
logoEmpresa mediumblob,
imagenEmpresa1 mediumblob
);

Create table sucursal(
idSucursal int unsigned not null auto_increment primary key,
nombreSucursal varchar(25),
direccionSucursal varchar(50),
calleSucursal varchar(50),
numeroSucursal int,

idEmpresa int unsigned not null,
foreign key (idEmpresa) references empresa(idEmpresa)
);


create table Departamento(
idDepartamento int unsigned not null auto_increment primary key,
nombreDepartamento varchar(30)
);

create table venta(
folio int unsigned not null auto_increment primary key,
Usuario_id int unsigned not null,
Producto_id int unsigned not null,
fechaCompra timestamp not null,
totalVenta double,

foreign key(Usuario_id) references Usuario(idUsuario)
);

create table ventaDetalle(
idVentaDetalle int unsigned not null auto_increment primary key,
venta int unsigned not null,
idProducto int unsigned not null,
foreign key (idProducto) references producto(idProducto),
foreign key (venta) references venta(folio)
);

create table producto (
idProducto int unsigned not null auto_increment primary key,
nombreProducto varchar(50),
descripcionLarga text,
descripcionCorta varchar(50),
precio double,
imagenProducto mediumblob,
Departamento_id int unsigned not null,
foreign key(Departamento_id) references Departamento (idDepartamento)
);

create table inventario(
idInventario int unsigned not null auto_increment primary key,

idProducto int unsigned not null,
idSucursal int unsigned not null,

foreign key (idProducto) references producto(idProducto),
foreign key (idSucursal) references sucursal(idSucursal)
);

create table videos(
idVideo int unsigned not null auto_increment primary key,
video longblob,
nombreVideo varchar(50),
duraciónVideo time,
inicioPlay datetime,
finPlay datetime,
imagenVideo tinyblob
);

create table pais(
idPais int unsigned not null auto_increment primary key,
nombrePais varchar(50) 
);

create table estado(
idEstado int unsigned not null auto_increment primary key,
nombreEstado varchar(50),
idPais int unsigned not null,
foreign key (idPais) references pais(idPais)
);
create table ciudad(
idCiudad int unsigned not null auto_increment primary key,
idEstado int unsigned not null,
foreign key (idEstado) references estado(idEstado)
);
-- Store Procedure


