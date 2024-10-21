USE master
GO

CREATE DATABASE BikeZ_DW
GO

USE BikeZ_DW
GO

CREATE SCHEMA dwh;
GO

CREATE TABLE dwh.Categoria
(
	CategoriaId		INT NOT NULL,
	Categoria		NVARCHAR(50) NOT NULL,
	CONSTRAINT PK_Categoria PRIMARY KEY(CategoriaId)
)
GO

CREATE TABLE dwh.Producto
(
	ProductoId		INT NOT NULL,
	Producto		NVARCHAR(50) NOT NULL,
	CategoriaId		INT NOT NULL,
	CONSTRAINT PK_Producto PRIMARY KEY(ProductoId),
	CONSTRAINT FK_Categoria_Producto FOREIGN KEY(CategoriaId)
		REFERENCES dwh.Categoria(CategoriaId)
)
GO

CREATE TABLE dwh.Territorio
(
    TerritorioId    INT NOT NULL,
    Territorio      NVARCHAR(50) NOT NULL,
    CONSTRAINT PK_Territorio PRIMARY KEY CLUSTERED (TerritorioId)
)
GO

CREATE TABLE dwh.Empleado
(
    EmpleadoId      INT NOT NULL,
    TerritorioId    INT NOT NULL,
    CONSTRAINT PK_Empleado PRIMARY KEY CLUSTERED (EmpleadoId),
    CONSTRAINT FK_Territorio_Empleado FOREIGN KEY(TerritorioId)
        REFERENCES dwh.Territorio(TerritorioId)
)
GO

CREATE TABLE dwh.Tiempo
(
	TiempoId		DATE NOT NULL,
    Dia			    INT NOT NULL,
    Mes             INT NOT NULL,
    Anho            INT NOT NULL,
	CONSTRAINT PK_Tiempo PRIMARY KEY(TiempoId)
)
GO

CREATE TABLE dwh.Venta
(
	VentaId			INT NOT NULL,
    TiempoId        DATE NOT NULL,
    TerritorioId    INT NOT NULL,
	ProductoId		INT NOT NULL,
	EmpleadoID		INT NOT NULL,
	Cantidad		INT NOT NULL,
	ValorTotal		MONEY NOT NULL,
    CONSTRAINT PK_Venta PRIMARY KEY CLUSTERED (VentaId, TiempoId, TerritorioId, ProductoId, EmpleadoId),
	CONSTRAINT FK_Tiempo_Venta FOREIGN KEY(TiempoId)
		REFERENCES dwh.Tiempo(TiempoId),
    CONSTRAINT FK_Territorio_Venta FOREIGN KEY(TerritorioId)
		REFERENCES dwh.Territorio(TerritorioId),
	CONSTRAINT FK_Producto_Venta FOREIGN KEY (ProductoId)
		REFERENCES dwh.Producto(ProductoId),
	CONSTRAINT FK_Empleado_Venta FOREIGN KEY(EmpleadoId)
        REFERENCES dwh.Empleado(EmpleadoId)
)
GO

INSERT INTO dwh.Categoria (CategoriaId, Categoria)
VALUES(0, 'SIN CATEGORIA')
GO

INSERT INTO dwh.Territorio (TerritorioId, Territorio)
VALUES(0, 'SIN TERRITORIO')
GO

INSERT INTO dwh.Empleado (EmpleadoId, TerritorioId)
VALUES(0, 0)
GO