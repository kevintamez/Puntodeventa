
delimiter &&
create procedure Manager(
Temail varchar(50),
Tnombre varchar(50),
Tcontraseña varchar(50),
TnombreSucursal varchar(25),
TidUsuario int,
opc varchar(10)
) 
BEGIN
		if opc="insert" then
			insert into usuario(email,nombre,contraseña) values(Temail, Tnombre, Tcontraseña)
			insert into sucursal(nombreSucursal) values(TnombreSucursal)
			
            end if;
            
			if opc="update" then 
			update usuario 
            set email=Temail,
			
            end if;
END
delimiter &&
drop procedure ManagerEmpresaSucursal;
delimiter &&
create procedure ManagerEmpresaSucursal(
TnombreEmpresa varchar(25),
TnombreSucursal varchar(25),
Tnombre varchar(50),
Temail varchar(50),
Tcontraseña varchar(50)

) 
BEGIN
	DECLARE IDEMPRESATEMP int;
    DECLARE IDSUCURSALTEMP int;
			insert into empresa(nombreEmpresa) values(TnombreEmpresa);
            
            select idEmpresa into IDEMPRESATEMP
            from empresa 
            where nombreEmpresa=TnombreEmpresa
            limit 1;
            
			insert into sucursal(nombreSucursal, idEmpresa) values(TnombreSucursal,IDEMPRESATEMP);
            
            select idSucursal into IDSUCURSALTEMP
            from sucursal
            where nombreSucursal=TnombreSucursal
            limit 1;
            
			insert into usuario(email,nombreUsuario,contraseña,idSucursal,tipoUsuario) values(Temail, Tnombre, Tcontraseña,IDSUCURSALTEMP,1);
            
			
END &&

delimiter &&
create procedure Video_agregar(
nombreVideo varchar(50),
duraciónVideo time,
inicioPlay datetime,
finPlay datetime,
imagenVideo tinyblob)
BEGIN
	insert into video values(nombreVideo,duraciónVideo,inicioPlay,
finPlay datetime,
imagenVideo tinyblob)
END
 &&



delimiter %%
create procedure Empresa_agregar(
		
		TnombreEmpresa varchar(25),
        TlogoEmpresa mediumblob,
        TimagenEmpresa1 mediumblob,
		TsloganEmpresa varchar(100)
)
BEGIN
		
		 insert into empresa(nombreEmpresa,logoEmpresa,imagenEmpresa1,sloganEmpresa)
						values(TnombreEmpresa,TlogoEmpresa,TimagenEmpresa1,TsloganEmpresa);
		
                
END %%

DELIMITER &&
create procedure modificarProducto(
TnombreProducto varchar(50),
TdescripcionLarga text,
TdescripcionCorta varchar(50),
Tprecio double,
TimagenProducto mediumblob,
TidDepartamento int,
TidProducto int)
BEGIN
update producto
set
	nombreProducto=TnombreProducto,
    descripcionLarga=TdescripcionLarga,
    descripcionCorta=TdescripcionCorta,
    precio=Tprecio,
    imagenProducto=TimagenProducto,
    Departamento_id=TidDepartamento
where idProducto=TidProducto;
END &&
 
delimiter &&
create procedure modificarEmpresa(
TnombreEmpresa varchar(25),
TlogoEmpresa mediumblob,
TimagenEmpresa1 mediumblob,
TsloganEmpresa varchar(50),
TidEmpresa int
)
BEGIN
	update empresa
    set nombreEmpresa=TnombreEmpresa,
		logoEmpresa = TlogoEmpresa,
        imagenEmpresa1=TimagenEmpresa1
    where idEmpresa=TnombreEmpresa;
END &&

delimiter $$
create procedure buscarDepartamento(idParam int
)
Begin
	select idDepartamento, nombreDepartamento
from Departamento
where idDepartamento=idParam;

end $$

drop view buscarMunicipioVW;
delimiter %%
create procedure buscarMunicipio()
begin 
	select idMunicipio, nombreMunicipio
	from municipio;
end %%

delimiter %%
CREATE DEFINER=`root`@`localhost` PROCEDURE `insertarUsuario`(
IN nombreUsuarioParam varchar(50), 
IN emailParam varchar(50), 
IN contraseñaParam varchar(50), 
IN apellidoMaternoUsuarioParam varchar(50), 
IN apellidoPaternoUsuarioParam varchar(50), 
IN tipoUsuarioParam enum('Manager', 'Cajero'), 
IN CURPParam varchar(18), 
IN RFCParam varchar(50), 
IN nivelDeEstudiosParam enum('Universidad', 'Preparatoria', 'Secundaria', 'Primaria'), 
IN idMunicipioParam int, 
IN coloniaParam varchar(50), 
IN codigoPostalParam int, 
IN calleParam varchar(50), 
IN telefonoParam varchar(10), 
IN fechaNacimientoParam date, 
IN fotoUsuarioParam mediumblob, 
IN idSucursalParam int,
in sexoParam enum('Hombre','Mujer'))
BEGIN
	INSERT INTO Usuario(nombreUsuario, 
	email, 
	contraseña, 
	apellidoMaternoUsuario, 
	apellidoPaternoUsuario, 
	tipoUsuario, 
	CURP, 
	RFC, 
	nivelDeEstudios, 
	idMunicipio, 
	colonia, 
	codigoPostal, 
	calle, 
	telefono, 
	fechaNacimiento, 
	fotoUsuario, 
	idSucursal,
    sexo)
	VALUES(nombreUsuarioParam, 
	emailParam, 
	contraseñaParam, 
	apellidoMaternoUsuarioParam, 
	apellidoPaternoUsuarioParam, 
	tipoUsuarioParam, 
	CURPParam, 
	RFCParam, 
	nivelDeEstudiosParam, 
	idMunicipioParam, 
	coloniaParam, 
	codigoPostalParam, 
	calleParam, 
	telefonoParam, 
	fechaNacimientoParam, 
	fotoUsuarioParam, 
	idSucursalParam,
    sexoParam);
END %%




