SELECT pr.dni, pr.matricula, p.apellido, p.nombre
FROM profesor pr
INNER JOIN persona p ON p.dni = pr.dni
INNER JOIN PROFESOR-CURSO pf ON pf.dni = pr.dni
INNER JOIN curso c ON c.cod_curso = pf.cod_curso
WHERE c.duracion > 100
ORDER BY pr.dni