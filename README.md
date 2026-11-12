# 📊 Data Analytics 2026 — Proyecto RetailPro

Proyecto del curso de **Data Analytics de Coderhouse**. El repositorio reúne las pre-entregas del curso, desarrolladas sobre un caso de negocio simulado: **RetailPro**, una empresa de retail de tecnología.

---

## 📝 Descripción del proyecto

RetailPro necesita ordenar y analizar la información de su negocio para tomar mejores decisiones comerciales. A lo largo del curso, el proyecto avanza por etapas:

1. **Modelado y carga de datos:** se diseña y crea una base de datos relacional en SQL Server con las tablas `categorias`, `clientes`, `productos` y `ventas`, y se cargan datos de prueba.
2. **Análisis con SQL:** se escriben consultas de negocio con agregaciones para responder preguntas concretas (ventas por mes, productos más vendidos, clientes que vuelven a comprar, etc.).
3. **Consultas avanzadas:** se actualiza el script de la base y se combinan tablas con `JOIN` y resultados con `UNION ALL`.
4. **Modelado en Power BI:** limpieza de datos en Power Query (a partir del Excel del curso), modelo de datos con relaciones 1:N, tabla calendario y medidas DAX.

---

## 🛠️ Herramientas

| Herramienta | Uso en el proyecto |
|---|---|
| **SQL Server** | Motor de base de datos |
| **SQL Server Management Studio (SSMS)** | Creación de la base, carga de datos y ejecución de consultas |
| **Power BI Desktop** | ETL en Power Query, modelo de datos, tabla calendario y medidas DAX |
| **GitHub** | Control de versiones y entrega del proyecto |

---

## 📁 Estructura del repositorio

```
data-analytics-2026/
│
├── Modulo-03/
│   └── ventas_tech_db.sql          # Crea las tablas y carga los datos de prueba
├── Modulo-04/
│   └── m4_consultas_negocio.sql    # Consultas de negocio con agregaciones
├── Modulo-05/
│   ├── ventas_tech_db_m5.sql       # Script de la base actualizado (2 clientes y 2 productos sin ventas)
│   └── m5_consultas_joins.sql      # Consultas con JOIN y UNION ALL
├── Pre-entrega-8/
│   └── Nizoli_Tomas_Checkpoint2.pbix   # Modelo de datos, tabla calendario y medidas DAX
└── README.md
```

### Detalle por carpeta

**`Modulo-03` — Creación de la base de datos**
- Crea las tablas `categorias`, `clientes`, `productos` y `ventas`, con sus relaciones.
- Inserta datos de prueba: 10 ventas de marzo de 2024.

**`Modulo-04` — Consultas de negocio con agregaciones**
- **Resumen mensual:** facturación, cantidad de pedidos y ticket promedio por mes.
- **Ranking de productos:** top 5 por facturación.
- **Clientes recurrentes:** clientes con más de un pedido.
- **Productos sobre el promedio:** productos cuya facturación supera el promedio por producto.

**`Modulo-05` — Base actualizada y consultas avanzadas**
- Versión actualizada del script de la base: suma 2 clientes y 2 productos sin ventas, para probar el `LEFT JOIN`.
- Consultas que cruzan tablas con `JOIN` y combinan resultados con `UNION ALL`.

**`Pre-entrega-8` — Power BI**
- Archivo `.pbix` con el modelo de datos en estrella (relaciones 1:N, filtro en una sola dirección).
- Tabla calendario `Dim_Fechas` para el análisis por fechas.
- Tabla `_Medidas` con 5 medidas DAX: Total Ventas, Ventas Online, Ventas YTD, Ventas LY y % Crecimiento Anual.

---

## ▶️ Cómo ejecutar los scripts SQL

### Requisitos previos
- Tener instalado **SQL Server** (la edición Express o Developer alcanza).
- Tener instalado **SQL Server Management Studio (SSMS)**.
- Descargar o clonar este repositorio:
  ```bash
  git clone https://github.com/tomynizo/data-analytics-2026.git
  ```

### Paso a paso

**1. Conectarse al servidor**
- Abrí SSMS.
- En la ventana *Connect to Server*, elegí tu instancia (por ejemplo `localhost` o `localhost\SQLEXPRESS`) y hacé clic en **Connect**.

**2. Crear la base de datos (una sola vez)**
- Los scripts **no crean la base**: arrancan con `USE Ventas_Tech_DB_91060;`. Por eso primero hay que crearla. Abrí una nueva consulta (**New Query**) y ejecutá:
  ```sql
  CREATE DATABASE Ventas_Tech_DB_91060;
  ```
- En el *Object Explorer*, hacé clic derecho en **Databases → Refresh** y verificá que aparezca.

**3. Crear las tablas y cargar los datos (Módulo 03)**
- Andá a **File → Open → File...** y abrí `Modulo-03/ventas_tech_db.sql`.
- Ejecutalo completo con **Execute** o con la tecla **F5**.
- Verificá la carga:
  ```sql
  SELECT COUNT(*) FROM ventas;   -- tiene que dar 10
  ```

**4. Ejecutar las consultas de negocio (Módulo 04)**
- Abrí `Modulo-04/m4_consultas_negocio.sql`. Ya empieza con `USE Ventas_Tech_DB_91060;`.
- Podés ejecutar todo con **F5** o ir consulta por consulta: seleccioná el bloque que quieras y apretá **F5** para correr solo esa parte.

**5. Actualizar la base y correr las consultas avanzadas (Módulo 05)**
- Abrí `Modulo-05/ventas_tech_db_m5.sql`.
  > ⚠️ Este script **no tiene `USE`**: antes de ejecutarlo, elegí `Ventas_Tech_DB_91060` en el desplegable de bases de datos de SSMS. Si no, crea las tablas en otra base (por ejemplo, `master`).
- Ejecutalo con **F5**. No hace falta borrar nada antes: el script hace `DROP TABLE IF EXISTS` y vuelve a crear las tablas con los datos actualizados.
- Después abrí `Modulo-05/m5_consultas_joins.sql` y ejecutá las consultas con `JOIN` y `UNION ALL`.

---

## 📈 Cómo abrir el archivo de Power BI

1. Abrí **Power BI Desktop**.
2. Andá a **Archivo → Abrir** y seleccioná `Pre-entrega-8/Nizoli_Tomas_Checkpoint2.pbix`.
3. Los datos ya vienen cargados en el archivo. **La fuente no es la base SQL**, sino el Excel `Pipeline_ETL_Dataset.xlsx` del curso. Para actualizar los datos, entrá a **Transformar datos → Configuración de origen de datos → Cambiar origen** y apuntá a la ubicación de ese Excel en tu compu.

---

## 👤 Autor

**Tomás Nizoli** — Proyecto realizado para el curso de Data Analytics de Coderhouse (2026).
