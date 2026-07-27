-- ══════════════════════════════════════════
-- TechStore — Consultas Básicas SELECT
-- Autor: Juan Pablo Pérez
-- Fecha: 27-07-2026
-- ══════════════════════════════════════════

-- Consulta 1: Exploración general de la tabla sales
SELECT * FROM sales; -- Tiene sentido usar * cuando queremos ver la tabla completa, cuando queremos ver alguna columna en particular no tiene sentido ya que arrojará mucha información extra innecesaria.

-- Consulta 2: Selección de columnas específicas para finanzas
SELECT customer_id, product_id, total_amount FROM sales;

-- Consulta 3: Selección con alias en español para stakeholders
SELECT order_date AS fecha_pedido, product_name AS nombre_producto, quantity AS cantidad_unidades 
FROM sales;

