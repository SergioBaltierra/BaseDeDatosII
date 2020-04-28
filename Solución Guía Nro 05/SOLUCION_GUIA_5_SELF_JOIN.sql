SELECT DISTINCT
    V1.NUMERO_VENTA,
    V1.RUN_CLIENTE, 
    V1.FECHA_VENTA,
    V2.RUN_VENDEDOR,
    V1.VENTA_FINAL
FROM VENTA V1, VENTA V2
WHERE V1.RUN_CLIENTE = V2.RUN_VENDEDOR;