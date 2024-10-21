USE BikeZ_DW
GO

DELETE FROM dwh.Venta
GO

DELETE FROM dwh.Producto
DELETE FROM dwh.Empleado
DELETE FROM dwh.Tiempo
GO

DELETE FROM dwh.Categoria
DELETE FROM dwh.Territorio
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