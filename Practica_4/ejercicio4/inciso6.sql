SELECT po.dni, p.apellido, p.nombre, SUM(c.duracion) AS Cantidad_Horas, AVG(c.duracion) AS Promedio_Horas
FROM profesor po
INNER JOIN persona p ON p.dni = po.dni
INNER JOIN "Profesor-Curso" pc ON pc.dni = po.dni
INNER JOIN curso c ON c.cod_curso = pc.cod_curso
GROUP BY po.dni, p.apellido, p.nombre