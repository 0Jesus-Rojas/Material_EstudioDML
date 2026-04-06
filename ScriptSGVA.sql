--Creamos la base de datos
create database Trazabilidad_SGVA;
--Se le especifica que se va a usar la base de datos creada
use Trazabilidad_SGVA; 
--Se crea la tabla trazabilidad
create table Trazabilidad(
	id_trazabilidad int primary key auto_increment not null,
    nombre_empresa varchar(100) not null,
    encargado varchar(100) null,
    fecha_inicio datetime not null,
    fecha_fin datetime not null,
    telefono varchar(15) null,
    correo varchar(100) null,
    estado varchar(45) not null,
    fecha_cierre datetime null
);
--Se crea la tabla Empresa
create table Empresa(
	id_empresa int primary key not null auto_increment,
    codigo_empresa varchar(100) not null,
    nombre_empresa varchar(100) not null
);
--Se elimina la complumna id_empresa que esta en la tabla Empresa
alter table Empresa
drop column id_empresa;
--Se hace un cambio de PK
alter table Empresa
ADD primary key(codigo_empresa);
--Se cambia el nombre del campo nombre_empresa a cod_empresa de la tabla Trazabilidad
ALTER TABLE trazabilidad
rename column nombre_empresa to cod_empresa;
--Se agregan los datos a la tabla empresa
insert into Empresa
values('COD1', 'Trycore');

insert into Empresa
values('COD2', 'Besedo');

insert into Empresa
values('COD3', 'Canal clima');

insert into Empresa
values('COD4', 'Logismart');

insert into Empresa
values('COD5', 'Datatools');

insert into Empresa(nombre_empresa, codigo_empresa)
values ('Trycore','COD6');

insert into Empresa(nombre_empresa, codigo_empresa)
values ('Besedo','COD7');

insert into Empresa(nombre_empresa, codigo_empresa)
values ('Canal clima','COD8');

insert into Empresa(nombre_empresa, codigo_empresa)
values ('Logismart','COD9');

insert into Empresa(nombre_empresa, codigo_empresa)
values ('Datatools','COD10');

select * from empresa;

describe Empresa;