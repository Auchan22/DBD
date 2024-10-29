SELECT a.dni, p.apellido, p.nombre, a.legajo
FROM alumno a
INNER JOIN persona p ON p.dni = a.dni
INNER JOIN "ALUMNO-CURSO" ac ON ac.dni = a.dni
INNER JOIN curso c ON c.cod_curso = ac.cod_curso
WHERE c.nombre LIKE '%BD%'
AND ac.año = 2022
AND NOT EXISTS (
	SELECT 1
	FROM "ALUMNO-CURSO" ac 2
	WHERE ac2.dni = a.dni
	AND ac2.año = 2023
)