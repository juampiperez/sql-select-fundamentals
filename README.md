## ¿Por qué es mala práctica usar SELECT * en producción?

1. **Rendimiento:** `SELECT *` obliga al motor de base de datos a leer y transferir todas las columnas de la tabla, incluso las que no se necesitan. En tablas con muchas columnas o millones de filas, esto impacta directamente en los tiempos de respuesta de las consultas.

2. **Mantenibilidad:** Si la estructura de la tabla cambia (se agrega o elimina una columna), las consultas con `SELECT *` pueden devolver resultados inesperados o romper los reportes que dependen de un orden fijo de columnas.

3. **Seguridad:** En tablas que contienen datos sensibles (emails, datos personales, información financiera), `SELECT *` puede exponer columnas que no deberían ser visibles para todos los usuarios o sistemas que consumen la consulta.

## ¿Por qué son importantes los alias para un stakeholder no técnico?

Los alias permiten traducir los nombres técnicos de las columnas a términos que cualquier persona del negocio pueda interpretar sin conocer la base de datos.

Por ejemplo, la columna `total_amount` es clara para un desarrollador, pero para alguien del área de finanzas no dice nada sobre si ese monto es en pesos, dólares, con o sin impuestos. Con un alias se puede renombrar como `monto_total_usd`, lo que comunica de forma directa qué representa ese valor.

```sql
SELECT total_amount AS monto_total_usd FROM sales;
```

Esto hace que los reportes sean autoexplicativos y reduce la necesidad de documentación adicional para los equipos no técnicos.
