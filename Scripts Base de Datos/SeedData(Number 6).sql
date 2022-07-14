USE ABONAP;

/*Empresas*/
INSERT INTO Empresas
		(Descripcion, Codigo, Estado)
	VALUES
		('ABONAP', 'EMPABO00001', 1);

/*Sucursales*/

INSERT INTO Sucursales
		(Descripcion, Codigo, Estado, IdEmpresa)
	VALUES
		('AVENIDA LIBERTAD', 'SUC00001', 1, 1);

INSERT INTO Sucursales
		(Descripcion, Codigo, Estado, IdEmpresa)
	VALUES
		('16 DE AGOSTO', 'SUC00002', 1, 1);

INSERT INTO Sucursales
		(Descripcion, Codigo, Estado, IdEmpresa)
	VALUES
		('SANTIAGO', 'SUC00008', 1, 1);

INSERT INTO Sucursales
		(Descripcion, Codigo, Estado, IdEmpresa)
	VALUES
		('SANTO DOMINGO', 'SUC00009', 1, 1);


/*Departamentos*/

INSERT INTO Departamentos
		(Descripcion, Codigo, Estado, IdSucursal)
	VALUES
		('TECNOLOGIA', 'DEPTEC00001', 1, 1);

INSERT INTO Departamentos
		(Descripcion, Codigo, Estado, IdSucursal)
	VALUES
		('NEGOCIOS', 'DEPNEG00002', 1, 1);

INSERT INTO Departamentos
		(Descripcion, Codigo, Estado, IdSucursal)
	VALUES
		('OPERACIONES', 'DEPOPE00003', 1, 1);

/*Personas*/
INSERT INTO Personas
		(Nombres, PrimerApellido, SegundoApellido, Codigo, Estado)
	VALUES
		('RONALD', 'PAULINO', 'ALBERTO', 'PER1508539', 1);

INSERT INTO Personas
		(Nombres, PrimerApellido, SegundoApellido, Codigo, Estado)
	VALUES
		('ALEXANDER', 'ALMONTE', 'TINEO', 'PER2098250', 1);

INSERT INTO Personas
		(Nombres, PrimerApellido, SegundoApellido, Codigo, Estado)
	VALUES
		('WILLY CARLOS', 'PORTALATIN', 'OWEN', 'PER5845931', 1);

/*TipoDocumento*/
INSERT INTO TipoDocumento
		(Descripcion, Codigo)
	VALUES
		('RNC', 1);

INSERT INTO TipoDocumento
		(Descripcion, Codigo)
	VALUES
		('CEDULA', 2);

INSERT INTO TipoDocumento
		(Descripcion, Codigo)
	VALUES
		('PASAPORTE', 3);

/*Documento*/
INSERT INTO Documento
		(Descripcion, Estado ,IdTipoDocumento)
	VALUES
		('402-7896247-3', 1, 2);

INSERT INTO Documento
		(Descripcion, Estado ,IdTipoDocumento)
	VALUES
		('048-0089654-4', 1, 2);

INSERT INTO Documento
		(Descripcion, Estado ,IdTipoDocumento)
	VALUES
		('047-98745960', 1, 2);

INSERT INTO Documento
		(Descripcion, Estado ,IdTipoDocumento)
	VALUES
		('005-87598-9', 0, 1);

/*Empleados*/
INSERT INTO Empleados
		(Codigo, Estado, IdPersona, IdSucursal)
	VALUES
		('EMP00001', 1, 1, 1);

INSERT INTO Empleados
		(Codigo, Estado, IdPersona, IdSucursal)
	VALUES
		('EMP00002', 1, 2, 1);

/*Clientes*/
INSERT INTO Clientes
		(Codigo, Estado, IdPersona, IdSucursal)
	VALUES
		('CLI00001', 1, 1, 1);


INSERT INTO Clientes
		(Codigo, Estado, IdPersona, IdSucursal)
	VALUES
		('CLI00002', 1, 2, 1);

/*Prestamos*/
INSERT INTO Prestamos
		(Codigo, Estado, IdCliente, IdSucursal)
	VALUES
		('PRES00001', 'C', 1, 1);

INSERT INTO Prestamos
		(Codigo, Estado, IdCliente, IdSucursal)
	VALUES
		('PRES00002', 'A', 1, 2);

INSERT INTO Prestamos
		(Codigo, Estado, IdCliente, IdSucursal)
	VALUES
		('PRES00003', 'A', 2, 3);