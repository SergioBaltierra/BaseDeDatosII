CREATE OR REPLACE FUNCTION CANTIDAD_CURSOS_POR_ESTUDIANTE 
  (ID_ESTUDIANTE IN NUMBER) 
  RETURN NUMBER 
AS 
  VAR_CANTIDAD_ESTUDIANTE NUMBER := 0;

BEGIN
  SELECT COUNT(ID_CURSO) INTO VAR_CANTIDAD_ESTUDIANTE
  FROM MATRICULADO M 
  WHERE M.ID_ESTUDIANTE = ID_ESTUDIANTE
  GROUP BY M.ID_ESTUDIANTE;

  IF VAR_CANTIDAD_ESTUDIANTE IS NULL THEN
    RAISE NO_DATA_FOUND;
  ELSE
    RETURN VAR_CANTIDAD_ESTUDIANTE;
  END IF;

EXCEPTION
  WHEN NO_DATA_FOUND THEN
    RETURN 0;

END CANTIDAD_CURSOS_POR_ESTUDIANTE;