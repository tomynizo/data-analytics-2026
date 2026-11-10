--Pre entrega 4/entregable 4--
--tomás nizoli--
--usamos ventras_tech_db--


--Consulta 1--

USE Ventas_Tech_DB_91060;
GO

SELECT TOP 10 * FROM ventas

SELECT 
MONTH(fecha_venta) AS Mes,
SUM	(cantidad*precio_unitario) AS total_facturado,
COUNT	(*) AS cantidad_pedidos ,
SUM	(cantidad*precio_unitario) / COUNT(*) AS ticket_promedio 

FROM ventas
GROUP BY MONTH(fecha_venta)
ORDER BY mes;

--Consulta 2--
SELECT TOP 5 
  id_producto,
  SUM(cantidad) AS unidades_vendidas, 
  SUM(cantidad*precio_unitario) AS total_facturado

  FROM ventas
  GROUP BY id_producto
  ORDER BY total_facturado DESC;

--Consulta 3--
SELECT 
id_cliente,
COUNT(*) AS cantidad_pedidos,
SUM(cantidad*precio_unitario) AS total_gastado

FROM ventas
GROUP BY id_cliente
HAVING COUNT(*) > 1
ORDER BY total_gastado DESC;

--Consulta 4--
WITH totales_producto AS (
SELECT 
  id_producto,
  SUM(cantidad*precio_unitario) AS total_facturado

FROM ventas 
GROUP BY id_producto
)

SELECT 
  id_producto,
  total_facturado,
  CASE
  
  WHEN total_facturado> (SELECT AVG(total_facturado) FROM totales_producto)

  THEN 'Por encima'
  ELSE 'Por debajo'
  END AS posicioN_vs_promedio

  FROM totales_producto
  ORDER BY total_facturado DESC;


