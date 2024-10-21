-- Categoria
-- Por defecto, el ultimo Id es 37
INSERT INTO BikeZ.dbo.Categorias (CategoriaID, Categoria)
VALUES(0, 'SIN CATEGORIA')
GO

-- Territorio
-- Por defecto, el ultimo Id es 10
-- PaisId tiene muchas opciones, mejor usar 'CL'
INSERT INTO BikeZ.dbo.Territorios (TerritorioId, Territorio)
VALUES(11, 'Chile', 'CL', 'Santiago')
GO

-- Producto
-- Por defecto, el ultimo Id es 999
-- Color y Categoria pueden ser nulos
INSERT INTO BikeZ.dbo.Productos (ProductoID, Producto, Color, CategoriaID)
VALUES(1001, 'Producto Falso', NULL, NULL)
GO

-- Empleado
-- Por defecto, el ultimo Id es 290
-- Cargo puede ser cualquier cosa
-- Estado civil puede ser ['S', 'M']
-- Genero puede ser ['M', 'F']
-- Territorio puede ser nulo
INSERT INTO BikeZ.dbo.Empleados (EmpleadoID, Cargo, FechaNacimiento, EstadoCivil, Genero, FechaContratacion, HorasVacaciones, TerritorioID)
VALUES(301, 'Fired', '1988-07-19', 'M', 'F', '2000-10-31', 24, NULL)
GO

-- Tiempo y Venta
-- Para Venta hay que agregar una Venta y al menos un DetalleVenta
-- Por defecto, el ultimo Id de Venta es 75123
-- FechaEnvio, VendedorID y TerritorioID pueden ser nulos
-- Cliente debe existir en Base de Datos
INSERT INTO BikeZ.dbo.Ventas(VentaID, Fecha, FechaEnvio, ClienteID, VendedorID, TerritorioID)
VALUES(76001, '2024-10-20', NULL, 11078, NULL, NULL)

-- Por defecto, el ultimo Id de DetalleVenta es 121317
-- VentaID de Venta y DetalleVenta deben ser iguales
-- ProductoID debe existir en Base de Datos
-- PrecioUnitario es decimal
INSERT INTO BikeZ.dbo.DetalleVentas(VentaID, DetalleVentaID,Cantidad,ProductoID,PrecioUnitario)
VALUES(76001, 1213118, 3, 712, 9.01)