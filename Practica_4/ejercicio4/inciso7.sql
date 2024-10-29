SELECT c.nombre, c.descripcion
FROM curso c
INNER JOIN "ALUMNO-CURSO" ac ON ac.cod_curso = c.cod_curso
WHERE ac.año = 2024
GROUP BY c.cod_curso, c.nombre, c.descripcion
ORDER BY COUNT(ac.dni) DESC
LIMIT 1

UNION ALL --UNION ALL ME PERMITE UNIR, POR MAS QUE TENGAN MISMOS VALORES (curso con max cantidad es a su vez el que menos tiene)

-- Curso con menos alumnos inscriptos en 2024
SELECT c.nombre, c.descripcion
FROM curso c
INNER JOIN "ALUMNO-CURSO" ac ON ac.cod_curso = c.cod_curso
WHERE ac.año = 2024
GROUP BY c.cod_curso, c.nombre, c.descripcion
ORDER BY COUNT(ac.dni) ASC
LIMIT 1;