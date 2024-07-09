SELECT *
FROM [Client].[Clientes]

SELECT *
FROM [Prod].[Producto]

SELECT *
FROM [Sales].[Delivery]

SELECT *
FROM [Sales].[Ventas]

/*Query 1*/
SELECT *
FROM [Sales].[Ventas]
WHERE cantidad_venta>100 AND canal_venta='B'AND peso>100 ORDER BY cantidad_venta DESC 

/*Query 2*/
SELECT *
FROM [Prod].[Producto]
WHERE periodo=202207 AND tier_id<=2 AND costo>600 ORDER BY tier_id ASC

/*Query 3*/
SELECT *
FROM [Client].[Clientes]
WHERE periodo=202207 AND negocio='Panaderia'AND tipo_negocio='Mediana empresa'

/*Query 4*/
SELECT CONCAT(negocio,'-',tipo_negocio) AS negocioytipo, cantidad_venta*precio_unitario AS VentaTotal
FROM [Sales].[Ventas] A
INNER JOIN [Client].[Clientes] B ON A.customer_id = B.customer_id AND A.periodo=B.periodo
WHERE canal_venta='V'AND cantidad_venta*precio_unitario>100000 ORDER BY VentaTotal DESC


