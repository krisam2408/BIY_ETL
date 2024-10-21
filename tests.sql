SELECT * FROM BikeZ_DW.dwh.Empleado

SELECT * FROM BikeZ_DW.dwh.Tiempo

SELECT * FROM BikeZ.dbo.Ventas

SELECT * FROM BikeZ_DW.dwh.Categoria

SELECT * FROM BikeZ_DW.dwh.Producto

USE BikeZ

SELECT
    v.VentaID,
    d.ProductoID,
    v.Fecha,
    v.TerritorioID,
    v.VendedorID,
    d.Cantidad,
    d.PrecioUnitario
FROM dbo.Ventas v
JOIN dbo.DetalleVentas d ON(v.VentaID = d.VentaID)
GROUP BY v.VentaID, d.ProductoID, v.Fecha, v.TerritorioID, v.VendedorID, d.Cantidad, d.PrecioUnitario
ORDER BY v.VentaID

SELECT
    VentaID,
    ProductoID,
    Cantidad,
    PrecioUnitario
FROM BikeZ.dbo.DetalleVentas
GROUP BY VentaID, ProductoID, Cantidad, PrecioUnitario
ORDER BY VentaID

SELECT * FROM BikeZ.dbo.Ventas
WHERE TerritorioID IS NULL

SELECT * FROM BikeZ.dbo.Ventas
SELECT * FROM BikeZ.dbo.Empleados

SELECT * FROM dwh.Empleado

SELECT * FROM dwh.Territorio

SELECT
    ov.VentaID,
    ov.VendedorID,
    oe.Cargo
 FROM BikeZ.dbo.Ventas ov
 JOIN BikeZ.dbo.Empleados oe ON(ov.VendedorID = oe.EmpleadoID)
 WHERE oe.Cargo != 'Sales Representative' 

INSERT INTO BikeZ.dbo.Categorias(CategoriaID, Categoria)
VALUES(50, 'Categoria Falsa')

SELECT * FROM BikeZ_DW.dwh.Categoria

SELECT
    t.CategoriaID,
    t.Categoria
FROM BikeZ.dbo.Categorias t
LEFT OUTER JOIN BikeZ_DW.dwh.Categoria k ON(t.CategoriaID = k.CategoriaId)

SELECT * FROM BikeZ_DW.dwh.Tiempo
ORDER BY TiempoId DESC

SELECT * FROM BikeZ_DW.dwh.Venta
ORDER BY TiempoId DESC

SELECT * FROM BikeZ.dbo.Ventas
ORDER BY Fecha DESC

INSERT INTO BikeZ.dbo.Ventas(VentaID, Fecha, FechaEnvio, ClienteID, VendedorID, TerritorioID)
VALUES(76001, '2024-10-20', NULL, 11078, NULL, NULL)

SELECT * FROM BikeZ.dbo.DetalleVentas
ORDER BY VentaID DESC

INSERT INTO BikeZ.dbo.DetalleVentas(VentaID, DetalleVentaID,Cantidad,ProductoID,PrecioUnitario)
VALUES(76001, 1213118, 3, 712, 9.01)

SELECT * FROM BikeZ_DW.dwh.Producto

SELECT * FROM BikeZ_DW.dwh.Empleado
ORDER BY EmpleadoId DESC