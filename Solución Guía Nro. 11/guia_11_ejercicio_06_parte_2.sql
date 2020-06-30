CREATE OR REPLACE PROCEDURE INSERT_FECHA_PAGO (P_MES IN INTEGER)
IS
    CURSOR C_FECHA_PAGO IS SELECT NUMERO_VENTA, FECHA_VENTA FROM VENTA;
    V_NUMERO_VENTA INTEGER;
    V_FECHA_PAGO DATE;
    ERROR_NULO EXCEPTION;
BEGIN
    FOR R_FECHA_PAGO IN C_FECHA_PAGO LOOP
        V_FECHA_PAGO := ADD_MONTHS(R_FECHA_PAGO.FECHA_VENTA,P_MES);
        V_NUMERO_VENTA := R_FECHA_PAGO.NUMERO_VENTA;
        
        IF V_FECHA_PAGO IS NOT NULL THEN
            UPDATE VENTA
            SET FECHA_PAGO = V_FECHA_PAGO
            WHERE NUMERO_VENTA = V_NUMERO_VENTA;
        ELSE
            RAISE ERROR_NULO;
        END IF;
    END LOOP;
EXCEPTION
    WHEN ERROR_NULO THEN
        DBMS_OUTPUT.PUT_LINE('Error fecha pago nula');
END INSERT_FECHA_PAGO;