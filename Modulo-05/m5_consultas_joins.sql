-- Pre-entrega 5: Consultas con JOIN y UNION ALL
-- Tomás Nizoli
USE Ventas_Tech_DB_91060;
GO

-- Consulta 1 — Vista base del proyecto (INNER JOIN)
-- Une ventas con clientes, productos y categorías para tener cada venta con nombres legibles.
-- Versión revisada con IA (Pre-entrega 9): se agregan IDs, nombres más claros y desempate en el orden.
SELECT
    v.id_venta,
    v.fecha_venta,
    v.id_cliente,
    c.nombre                        AS nombre_cliente,
    c.ciudad,
    v.id_producto,
    p.nombre_producto,
    cat.nombre_categoria            AS categoria,
    v.cantidad,
    v.precio_unitario,
    v.cantidad * v.precio_unitario  AS importe_total
FROM dbo.ventas AS v
INNER JOIN dbo.clientes   AS c   ON c.id_cliente     = v.id_cliente
INNER JOIN dbo.productos  AS p   ON p.id_producto    = v.id_producto
INNER JOIN dbo.categorias AS cat ON cat.id_categoria = p.id_categoria
ORDER BY v.fecha_venta, v.id_venta;
-- Hallazgo: las 10 ventas cruzan sin pérdidas (10 = 10 filas). Computación concentra 4.950 de 6.444 (76,8%).

-- Consultas 2 a 4 (LEFT JOIN y UNION ALL): en progreso.
