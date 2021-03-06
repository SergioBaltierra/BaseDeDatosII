DECLARE 
	CURSOR C_VENTA IS SELECT NUMERO_VENTA, FECHA_VENTA, VENTA_FINAL FROM VENTA;
BEGIN
	FOR R_VENTA IN C_VENTA LOOP
		DBMS_OUTPUT.PUT_LINE(R_VENTA.NUMERO_VENTA || ' ' || R_VENTA.FECHA_VENTA || ' ' || R_VENTA.VENTA_FINAL);
	END LOOP;
END;
/


DECLARE
	CURSOR C_CLIENTE_COMPRADOR IS 
		SELECT 
			RUN_CLIENTE, 
			NOMBRE_CLIENTE, 
			TELEFONO_CLIENTE, 
			CORREO_ELECTRONICO_CLIENTE 
		FROM CLIENTE_COMPRADOR;
BEGIN
	FOR R_CLIENTE_COMPRADOR IN C_CLIENTE_COMPRADOR LOOP
		DBMS_OUTPUT.PUT_LINE(R_CLIENTE_COMPRADOR.RUN_CLIENTE || ' ' || R_CLIENTE_COMPRADOR.NOMBRE_CLIENTE || ' ' || R_CLIENTE_COMPRADOR.TELEFONO_CLIENTE || ' ' || R_CLIENTE_COMPRADOR.CORREO_ELECTRONICO_CLIENTE);
	END LOOP;
END;
/

DECLARE
	CURSOR C_ARTISTAS IS 
	SELECT 
		NOMBRE_ARTISTA, 
		DIRECCION_ARTISTA, 
		TELEFONO_ARTISTA
	FROM ARTISTAS;
BEGIN
	FOR R_ARTISTAS IN C_ARTISTAS LOOP
		DBMS_OUTPUT.PUT_LINE(R_ARTISTAS.NOMBRE_ARTISTA || ' ' || R_ARTISTAS.DIRECCION_ARTISTA || ' ' || R_ARTISTAS.TELEFONO_ARTISTA);
	END LOOP;
END;
/


DECLARE
	CURSOR C_OBRAS_ARTE IS 
	SELECT
		NOMBRE_ARTISTA, 
		TITULO_OBRA,
		PRECIO_SOLICITADO
	FROM OBRAS_ARTE;
BEGIN
	FOR R_OBRAS_ARTE IN C_OBRAS_ARTE LOOP
		DBMS_OUTPUT.PUT_LINE(R_OBRAS_ARTE.NOMBRE_ARTISTA || ' ' || R_OBRAS_ARTE.TITULO_OBRA || ' ' || R_OBRAS_ARTE.PRECIO_SOLICITADO);
	END LOOP;
END;
/























