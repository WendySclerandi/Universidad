SELECT PP.[Cod-Producto], SUM(Cantidad) AS 'Cantidad de productos'
INTO TMP
FROM Pedidos P, [Pedidos-Productos] PP
WHERE P.[Cod-Pedido] = PP.[Cod-Pedido] AND [Fecha-Ingreso] > (GETDATE() - 30)
GROUP BY PP.[Cod-Producto]
SELECT P.[Cod-Producto], [Tipo-Producto]
FROM TMP, Productos P
WHERE P.[Cod-Producto] = TMP.[Cod-Producto] AND [Cantidad de productos] IN (SELECT MAX([Cantidad de productos]) FROM TMP)
SELECT P.[Cod-Producto], [Tipo-Producto]
FROM TMP, Productos P
WHERE P.[Cod-Producto] = TMP.[Cod-Producto] AND [Cantidad de productos] IN (SELECT MIN ([Cantidad de productos]) FROM TMP)
DROP TABLE TMP
