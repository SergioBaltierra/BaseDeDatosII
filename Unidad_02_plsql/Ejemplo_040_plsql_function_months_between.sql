SELECT
  ID_PRODUCTO_FECHAS_PROCESO,
  MONTHS_BETWEEN(ADD_MONTHS(FECHA_COMPRA,1),FECHA_COMPRA) MESES_ENTRE_FECHA_COMPRA
FROM PRODUCTO_FECHAS_PROCESO