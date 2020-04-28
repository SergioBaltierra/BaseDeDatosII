SELECT
    NOMBRE_ARTISTA,
    TOTAL_VENTAS_ANUAL,
    TOTAL_VENTAS_ANIO_ANTERIOR,
    (TOTAL_VENTAS_ANUAL + COALESCE(TOTAL_VENTAS_ANIO_ANTERIOR,0)) SUMA_TOTAL_VENTAS
FROM ARTISTA_TOTALES_VENTAS;