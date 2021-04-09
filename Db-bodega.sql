Drop table PRODUCTOS;
Drop table EMPLEADOS;
Drop table FACTURAS;
Drop table REGISTRO;
Drop table CLIENTE;

Create table PRODUCTOS(
    Id_productos VARCHAR2(6) not null,
    Nombre VARCHAR2 (20) not null,
    Descripcion VARCHAR2 (50),
    Costo NUMBER(6,2) not null,
    Cantidad NUMBER(3) not null,
    Proveedor VARCHAR2(30) DEFAULT(0),
    Primary Key (Id_productos)
);

insert into PRODUCTOS values ('PRD001', 'Bolones', 'Rojos redonddos, sabor fresa', 50.36, 500, 'Dulcesmania');
insert into PRODUCTOS values ('PRD002', 'Leche Listamilk', '50Ml, blanca, envase de carton', 45.00, 50, 'Grupo Rica');
insert into PRODUCTOS values ('PRD003', 'Cola Real', 'Sabor negro, 15ML', 14.35, 30, 'Industria San Miguel');
insert into PRODUCTOS values ('PRD004', 'Arros graneado', 'Saco de arroz de 3 libras', 350.55, 60, 'Arror El grano');
insert into PRODUCTOS values ('PRD005', 'Matequilla', 'Margarina Manicera original desde 1970', 59.99, 50, null);
insert into PRODUCTOS values ('PRD006', 'Salami Induveca', 'Salami picante, fino', 299.99, 100, 'Induveca');
insert into PRODUCTOS values ('PRD007', 'Reck Rock', 'Fresa, 1 litro', 65.00, 35, 'Reck Rock');
insert into PRODUCTOS values ('PRD008', 'Doña Gallina', 'Menos grasa, 0% colesterol, sal al punto', 4.78, 150, 'Quala');
insert into PRODUCTOS values ('PRD009', 'Jugo de Naranja', '100% Jugo de naranza, envace de carton', 55.88, 120, 'Grupo Rica');
insert into PRODUCTOS values ('PRD010', 'Cafe Santo Domingo', 'Molido, Peso de 1 LB (453.6g), sabor fresa', 100.00, 500, 'Induban');
insert into PRODUCTOS values ('PRD011', 'Arroz Santo Domingo', 'Arroz 100% natural de Santo Dimngo', 1054.95, 15, 'Arturo Bisonó Toribio, SRL');
insert into PRODUCTOS values ('PRD012', 'Energy 360', 'Energizante con extrasto de guaraná', 70.00, 0, 'Industria San Miguel');
insert into PRODUCTOS values ('PRD013', 'Yogurt', '30% menos de azucar, mejor sabor', 62.00, 120, 'Grupo Rica');
insert into PRODUCTOS values ('PRD014', 'Salami', 'Induveca normal', 225.00, 65, 'Induveca');
insert into PRODUCTOS values ('PRD015', 'Ricompleto', 'Combinacion total del Sazon', 7.36, 200, null);


Create table EMPLEADOS(
    Id_empleados VARCHAR2 (6) not null,
    Cedula VARCHAR2 (11) not null,
    Nombre VARCHAR2 (12) not null,
    Apellidos VARCHAR2 (30) not null,
    Direccion VARCHAR2 (50),
    Telefono VARCHAR2 (10),
    Cargo VARCHAR2 (25),
    Fecha_ingreso VARCHAR2 (10),
    Sueldo Number (7),
    Primary Key (Id_empleados)
);

insert into EMPLEADOS values ('EMP001', '40241259818', 'Raul', 'Capellan Peralta', 'Av 27 De Febrero 2-b', '8095880119', 'Delivery', '20/12/2020', 15000.00);
insert into EMPLEADOS values ('EMP002', '00126542689', 'Manuel', 'Polancon Ramirez', 'El Carmen 73', '8096547856', 'Delivery', '15/09/2018', 10000.00);
insert into EMPLEADOS values ('EMP003', '40241523698', 'Jorge', 'Del carmen Rosario', '8 No. 8 La Isabelita', '8496321489', 'Delivery', '30/05/2017', 7500.00);
insert into EMPLEADOS values ('EMP004', '09725687923', 'Maria', 'Pereyra Beltran', 'Av Hnas Mirabal 192', '8296541873', 'Cajero', '7/01/2010', 25000.00);
insert into EMPLEADOS values ('EMP005', '00125641365', 'Paco', 'Almanzar Garrido', 'Av Tiradentes Esq. Fantino Falco', '8295552630', 'Cajero', '25/08/2018', 20000.00);
insert into EMPLEADOS values ('EMP006', '00125641365', 'Ana', 'Nuñez del Rosario', 'Av G M Ricart 106', '8093331426', 'Limpieza', '13/09/2018', 17000.00);


Create table FACTURAS(
    Id_Factura VARCHAR2 (6) not null,
    Fecha_Factura VARCHAR2 (10) DEFAULT(SYSDATE),
    Nombre_Cli VARCHAR2 (12) not null,
    Apellidos_Cli VARCHAR2 (30) not null,
    Productos VARCHAR2 (100),
    Cajero VARCHAR2 (30) default 'Desconocido',
    Total NUMBER (7,2),
    Primary Key (Id_Factura)
);

insert into FACTURAS values ('FAC001', '27/01/2021', 'Raul', 'Peralta', 'Bolones, Leche Listamilk, Cola Real, Arros graneado', 'Paco Almanzar Garrido', 50.36 + 45.00 + 14.35 + 520.55);
insert into FACTURAS values ('FAC002', '28/01/2021', 'Miguel', 'Geronimo', 'Matequilla , Salami Induveca', 'Maria Pereyra Beltran', 59.99 + 119.95);
insert into FACTURAS values ('FAC003', '29/01/2021', 'Paul', 'Rosario', 'Reck Rock, Doña Gallina, Jugo de Naranja', 'default', 65.00 + 4.78 + 55.88);
insert into FACTURAS values ('FAC004', '30/01/2021', 'Ramon', 'Alcantara', 'Cafe Santo Domingo, Arroz Santo Domingo, Energy 360', 'Maria Pereyra Beltran', 100.00 + 1239.99 + 70.00);
insert into FACTURAS values ('FAC005', '31/01/2021', 'Gregorio', 'Gillon', 'Yogurt, Salami, Ricompleto', 'Paco Almanzar Garrido', 62.00 + 97.00 + 7.36);
insert into FACTURAS values ('FAC006', '01/02/2021', 'Gedeon', 'Nuñez', 'Ricompleto, Cafe Santo Domingo, Salami Induveca, Jugo de Naranja', 'Maria Pereyra Beltran', 7.36 + 100.00 + 119.95 + 55.88);
insert into FACTURAS values ('FAC007', '01/02/2021', 'Noel', 'Rodriguez', 'Bolones, Jugo de Naranja, Yogurt', 'Paco Almanzar Garrido', 50.36 + 55.88 + 62.00);
insert into FACTURAS values ('FAC008', '14/02/2021', 'Jose', 'Cortorreal', 'Reck Rock, Energy 360, Cola Real', 'Paco Almanzar Garrido', 65.00 + 70.00 + 14.35);
insert into FACTURAS values ('FAC009', '14/03/2021', 'Manuel', 'De la Cruz', 'Doña Gallina, Arroz Santo Domingo, Salami, Ricompleto ', 'default', 4.78 + 1239.99 + 97.00 + 7.36);
insert into FACTURAS values ('FAC010', '12/03/2021', 'Jorge', 'De los Santos', 'Energy 360, Matequilla, Leche Listamilk', 'Maria Pereyra Beltran', 70.00 + 59.99 + 45.00);


Create table REGISTRO(
    Id_Registro VARCHAR2(6) not  null,
    Totdiavendido NUMBER(8,2) default '0',
	Cantprodcvendidos NUMBER(5) default '0',
    Primary Key (Id_Registro)
);

insert into REGISTRO values ('REG001', 12050.00, 100);
insert into REGISTRO values ('REG002', 120050.00, 250);
insert into REGISTRO values ('REG003', 15000.00, 120);
insert into REGISTRO values ('REG004', default, 88);
insert into REGISTRO values ('REG005', 5236.00, 70);
insert into REGISTRO values ('REG006', 28768.41, 230);
insert into REGISTRO values ('REG007', 19652.14, 300);
insert into REGISTRO values ('REG008', default, 168);
insert into REGISTRO values ('REG009', 20553.00, 147);
insert into REGISTRO values ('REG010', 289300.13, default);


Create table CLIENTE(
    Id_Cliente VARCHAR2(6) not null,
    Nombre VARCHAR2(12) not null,
    Apellidos VARCHAR2(30) not null,
    Cedula VARCHAR2(11) not null,
    Direccion VARCHAR2(50),
    Telefono VARCHAR2(10),
    Primary Key (Id_Cliente)
);

insert into CLIENTE values ('CLI001', 'Moises', 'Cabral', '05500014500', 'La caleta N.54/ ave. la casita 13', '8094578489');
insert into CLIENTE values ('CLI002', 'Rafael', 'Polanco', '05500132138', 'CALLE AGUSTIN LARA NO. 69-B', '8299461768');
insert into CLIENTE values ('CLI003', 'Miguel', 'Geronimo', '05500230031', 'AV. INDEPENDENCIA NO. 241', '8299461804');
insert into CLIENTE values ('CLI004', 'Raul', 'Peralta', '05500106967', 'AV. 20 DE NOVIEMBRE NO.1024', '8299465933');
insert into CLIENTE values ('CLI005', 'Ramon', 'Alcantara', '05500401509', 'AV. 20 DE NOVIEMBRE NO. 1060', '8299548315');
insert into CLIENTE values ('CLI006', 'Gregorio', 'Gillon', '05500262315', 'CALLE ZARAGOZA NO. 1010', '8299463938');
insert into CLIENTE values ('CLI007', 'Gedeon', 'Nuñez', '06100248282', '	AV. 20 DE NOVIEMBRE NO 1053', '8299548361');
insert into CLIENTE values ('CLI008', 'Noel', 'Rodriguez', '05500315030', 'CALLE MATAMOROS NO.280', '8299461186');
insert into CLIENTE values ('CLI009', 'Jose', 'Cortorreal', '05500427207', 'CALLE MATAMOROS NO. 127', '8299461076');
insert into CLIENTE values ('CLI010', 'Manuel', 'De la Cruz', '05500312193', 'AV.INDEPENDENCIA NO.1010', '8299460947');
insert into CLIENTE values ('CLI011', 'Jorge', 'De los Santos', '40237944422', 'AV. 5 DE MAYO NO. 1652', '8299548376');
insert into CLIENTE values ('CLI012', 'Eggar', 'Enriquez', '05500248363', 'AV. INDEPENDENCIA NO. 985-A', '8299461768');
insert into CLIENTE values ('CLI013', 'Elvis', 'Abel', '05500106165', 'BLVD. BENITO JUAREZ S / N', '8096822000');
insert into CLIENTE values ('CLI014', 'Albert', 'Rodriguez', '40225053392', 'MATAMOROS NO 85 ESQ. 20 DE NOVIEMBRE', '8096823004');
insert into CLIENTE values ('CLI015', 'Jeffry', 'Sloam', '05500273841', 'AV. 20 DE NOVIEMBRE ESQ. JUAREZ', '8495263521');
insert into CLIENTE values ('CLI016', 'Thomas', 'Cespedes', '05500050124', '20 DE NOVIEMBRE NO. 955', '8295481256');
insert into CLIENTE values ('CLI017', 'Lissa', 'Vasquez', '05500331847', 'C. ALDAMA NO. 153', '8296584321');
insert into CLIENTE values ('CLI018', 'Perla', 'Mercado', '40223769254', '	CALLE 21 DE MARZO NO. 17', '8094587458');
insert into CLIENTE values ('CLI019', 'Judith', 'Mercado', '40224382370', '18 DE MARZO NO. 1111', '8296547412');
insert into CLIENTE values ('CLI020', 'Isaac', 'Alvarado', '00114219033', 'CALLE MORELOS NO. 24', '8495648562');

UPDATE PRODUCTOS set costo = costo + (costo * 0.10);

UPDATE EMPLEADOS set Sueldo = Sueldo + (Sueldo * 0.30) where Nombre like 'P%';

delete from PRODUCTOS where cantidad = 0;

select *from PRODUCTOS where costo BETWEEN 200 and 350;

select *FROM PRODUCTOS order by costo desc;

select avg(costo) as "Precio Promedio" from PRODUCTOS;

select max(total) as "Factura de Mayor Valor", min(total) as "Factura de menor Valor", avg(total) as "Valor Promedio"  from FACTURAS; 

select sum(Sueldo) as "Monto del Sueldo" from EMPLEADOS;

describe EMPLEADOS;

Select * from EMPLEADOS where Cedula = '   ' or Nombre= '   ' or Apellidos = '   ' or Direccion = '   ' or  Telefono = '   ' or Cargo = '   ' or Fecha_ingreso = '   ';

delete from PRODUCTOS where Proveedor is null;
