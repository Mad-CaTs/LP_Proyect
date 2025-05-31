create database bd_almacen;
use bd_almacen;

create table tb_tipos(
idtipo int auto_increment primary key,
descripcion varchar(100)
);

create table tb_usuarios(
cod_usua int auto_increment primary key,
nom_usua varchar(100),
ape_usua varchar(100),
usr_usua varchar(100),
cla_usua varchar(100),
fna_usua date,
idtipo int,
est_usua int,
foreign key (idtipo) references tb_tipos (idtipo)
);

create table tb_categorias(
idcategoria int auto_increment  primary key,
descripcion varchar(100)
);

create table tb_proveedor(
idproveedor int auto_increment  primary key,
nombre_rs varchar(100),
telefono varchar(100),
email varchar(100)
);

create table tb_productos(
idprod int auto_increment primary key,
des_prod varchar(100),
stk_prod int,
pre_prod double,
idcategoria int,
idproveedor int,
est_prod int,
foreign key (idcategoria) references tb_categorias (idcategoria),
foreign key (idproveedor) references tb_proveedor (idproveedor)
);

insert into tb_tipos (descripcion) values('Administrativo'),('Cliente');

insert into tb_usuarios (nom_usua,ape_usua,usr_usua,cla_usua,idtipo,est_usua)
values ('Oliver','Jara','cibertec','123456',1,1);

insert into tb_usuarios (nom_usua,ape_usua,usr_usua,cla_usua,idtipo,est_usua)
values ('Rosa','Pereza','pepe','123',2,1);

insert into tb_categorias (descripcion) values 
('Pastillas'),('Jarabes'),('Jeringas');

insert into tb_proveedor (nombre_rs,telefono,email) values 
('Pharmalab','245-2100','ventas@pharmalab.com'),
('Pharmalab2','225-2100','ventas@pharmalab2.com'),
('Pharmalab3','235-2100','ventas@pharmalab3.com');

insert into tb_productos (des_prod,stk_prod,pre_prod,idcategoria,idproveedor,est_prod)
values
('Pabadol cj 10',20,1.85,1,1,1);



