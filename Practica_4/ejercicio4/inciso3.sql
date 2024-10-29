SELECT a.dni, p.apellido, p.nombre, p.genero, p.fecha_nacimiento
FROM Alumno a
INNER JOIN persona p ON p.dni = a.dni
INNER JOIN alumno-curso ac ON ac.dni = a.dni
INNER JOIN curso c ON c.cod_curso = ac.cod_curso
WHERE c.nombre = 'Diseño de Bases de Datos'
AND ac.año = 2023