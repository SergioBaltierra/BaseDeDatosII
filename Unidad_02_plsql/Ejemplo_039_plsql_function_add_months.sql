SELECT
  ID_PRODUCTO_FECHAS_PROCESO,
  FECHA_COMPRA,
  ADD_MONTHS(FECHA_COMPRA,1) FECHA_COMPRA_MAS_1_MES,
  ADD_MONTHS(FECHA_COMPRA,-1) FECHA_COMPRA_MENOS_1_MES
FROM PRODUCTO_FECHAS_PROCESO