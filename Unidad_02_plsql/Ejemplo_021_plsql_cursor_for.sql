DECLARE
  CURSOR C_ESTUDIANTE IS SELECT ID_ESTUDIANTE, NOMBRES, APELLIDOS, RUN FROM ESTUDIANTE;
BEGIN
  FOR R_ESTUDIANTE IN C_ESTUDIANTE LOOP
    DBMS_OUTPUT.PUT_LINE(R_ESTUDIANTE.ID_ESTUDIANTE || ' ' || R_ESTUDIANTE.NOMBRES || ' ' || R_ESTUDIANTE.APELLIDOS || ' ' || R_ESTUDIANTE.RUN);
  END LOOP;
END;
/