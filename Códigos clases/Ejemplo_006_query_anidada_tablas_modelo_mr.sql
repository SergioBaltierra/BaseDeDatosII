-- Misma subquery pero restriccion de mostrar solo alumnos cursando un solo curso, usando query anidada.
SELECT 
	A.NOMBRES,
    A.APELLIDOS,
    A.CANTIDAD_CURSO
FROM 
(
	SELECT 
		E.NOMBRES, 
    	E.APELLIDOS,
    	(SELECT COUNT(1) CANTIDAD_ESTUDIANTE
		 FROM MATRICULADO M 
		 WHERE M.ID_ESTUDIANTE = E.ID_ESTUDIANTE
		 GROUP BY M.ID_ESTUDIANTE) CANTIDAD_CURSO
	FROM ESTUDIANTE E
) AS A
WHERE A.CANTIDAD_CURSO = 1