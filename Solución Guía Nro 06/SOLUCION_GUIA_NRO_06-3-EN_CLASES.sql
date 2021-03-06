SELECT
	CC.RUN_CLIENTE,
    CC.NOMBRE_CLIENTE,
    SUM(CT.TOTAL_COMPRAS_A_LA_FECHA) SUM_TOTAL_COMPRAS_A_LA_FECHA,
    SUM(CT.TOTAL_COMPRAS_ANIO_PASADO) SUM_TOTAL_COMPRAS_ANIO_PASADO
FROM CLIENTES_TOTALES CT
JOIN CLIENTE_COMPRADOR CC ON CC.RUN_CLIENTE = CT.RUN_CLIENTE
WHERE CT.FECHA_ANIO_CLIENTES_COMPRAS = 2020
GROUP BY CC.RUN_CLIENTE, CC.NOMBRE_CLIENTE;