DROP DATABASE IF EXISTS ABONAP;
go

CREATE DATABASE ABONAP;
go

USE ABONAP;

CREATE TABLE Empresas(
	IdEmpresa INT IDENTITY NOT NULL,
	Descripcion NVARCHAR(45),
	FechaCreacion DATETIME DEFAULT getDate(),
	FechaActualizacion DATETIME DEFAULT getDate(),
	Codigo NVARCHAR(30),
	Estado BINARY,

	PRIMARY KEY(IdEmpresa)
);

CREATE TABLE Sucursales(
	IdSucursal INT IDENTITY NOT NULL,
	Descripcion NVARCHAR(45),
	FechaCreacion DATETIME DEFAULT getDate(),
	FechaActualizacion DATETIME DEFAULT getDate(),
	Codigo NVARCHAR(30),
	Estado BINARY,
	IdEmpresa INT NOT NULL,

	PRIMARY KEY(IdSucursal),
	FOREIGN KEY(IdEmpresa) REFERENCES Empresas(IdEmpresa)
);

CREATE TABLE Departamentos(
	IdDepartamentos INT IDENTITY NOT NULL,
	Descripcion NVARCHAR(45),
	FechaCreacion DateTime DEFAULT getDate(),
	FechaActualizacion DATETIME DEFAULT getDate(),
	Codigo NVARCHAR(30),
	Estado BINARY,
	IdSucursal INT NOT NULL,

	PRIMARY KEY(IdDepartamentos),
	FOREIGN KEY(IdSucursal) REFERENCES Sucursales(IdSucursal)
);

CREATE TABLE Personas(
	IdPersona INT IDENTITY NOT NULL,
	Nombres NVARCHAR(100),
	PrimerApellido NVARCHAR(100),
	SegundoApellido NVARCHAR(100),
	FechaCreacion DATETIME DEFAULT getDate(),
	Codigo NVARCHAR(30),
	Estado BINARY,

	PRIMARY KEY(IdPersona)
);

CREATE TABLE Empleados(
	IdEmpleado INT IDENTITY NOT NULL,
	FechaCreacion DATETIME DEFAULT getDate(),
	FechaActualizacion DATETIME DEFAULT getDate(),
	Codigo NVARCHAR(30),
	Estado BINARY,
	IdPersona INT NOT NULL,
	IdSucursal INT NOT NULL,

	PRIMARY KEY(IdEmpleado),
	FOREIGN KEY(IdPersona) REFERENCES Personas(IdPersona),
	FOREIGN KEY(IdSucursal) REFERENCES Sucursales(IdSucursal)
);

CREATE TABLE Clientes(
	IdCliente INT IDENTITY NOT NULL,
	FechaCreacion DATETIME DEFAULT getDate(),
	FechaActualizacion DATETIME DEFAULT getDate(),
	Codigo NVARCHAR(30),
	Estado BINARY,
	IdPersona INT NOT NULL,
	IdSucursal INT NOT NULL,

	PRIMARY KEY(IdCliente),
	FOREIGN KEY(IdPersona) REFERENCES Personas(IdPersona),
	FOREIGN KEY(IdSucursal) REFERENCES Sucursales(IdSucursal)
);

CREATE TABLE Prestamos(
	IdPrestamo INT IDENTITY NOT NULL,
	FechaCreacion DATETIME DEFAULT getDate(),
	FechaActualizacion DATETIME DEFAULT getDate(),
	Codigo NVARCHAR(30),
	Estado BINARY,
	IdCliente INT NOT NULL,
	IdSucursal INT NOT NULL,

	PRIMARY KEY(IdPrestamo),
	FOREIGN KEY(IdCliente) REFERENCES Clientes(IdCliente),
	FOREIGN KEY(IdSucursal) REFERENCES Sucursales(IdSucursal)
);

CREATE TABLE TipoDocumento(
	IdTipoDocumento INT IDENTITY NOT NULL,
	Descripcion NVARCHAR(50),
	Codigo NVARCHAR(30),

	PRIMARY KEY(IdTipoDocumento)
);

CREATE TABLE Documento(
	IdDocumento INT IDENTITY NOT NULL,
	FechaCreacion DATETIME DEFAULT getDate(),
	FechaActualizacion DATETIME DEFAULT getDate(),
	Descripcion NVARCHAR(50),
	Estado BINARY,
	IdTipoDocumento INT NOT NULL,

	PRIMARY KEY(IdDocumento),
	FOREIGN KEY(IdTipoDocumento) REFERENCES TipoDocumento(IdTipoDocumento)
);