SELECT 
  ID_PRODUCTO_FECHAS_PROCESO, 
  TO_CHAR(FECHA_COMPRA,'YYYY/MM/DD HH24:MI:SS') FECHA_COMPRA
FROM PRODUCTO_FECHAS_PROCESO;