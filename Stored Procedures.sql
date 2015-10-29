
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
            where nombreEmpresa=TnombreEmpresa;
            
			insert into sucursal(nombreSucursal, idEmpresa) values(TnombreSucursal,IDEMPRESATEMP);
            
            select idSucursal into IDSUCURSALTEMP
            from sucursal
            where nombreSucursal=TnombreSucursal;
            
			insert into usuario(email,nombre,contraseña,idSucursal) values(Temail, Tnombre, Tcontraseña,IDSUCURSALTEMP);
            
			
END
  &&

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

delimiter %%
create procedure EditarEmpresa(
TnombreEmpresa varchar(25),
TlogoEmpresa mediumBlob,
TimagenEMpresa1 mediumBlob,
Tslogan varchar(50),
TidEMpre int
)
begin
	update
END %%
delimiter %%
create procedure ModificarEmpleado(
)
begin
	
end %%