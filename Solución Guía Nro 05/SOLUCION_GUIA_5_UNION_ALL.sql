SELECT
    RUN_CLIENTE, 
    VENTA_FINAL 
FROM VENTA

UNION ALL

SELECT
    RUN_CLIENTE, 
    TOTAL_COMPRAS_A_LA_FECHA 
FROM CLIENTES_TOTALES;