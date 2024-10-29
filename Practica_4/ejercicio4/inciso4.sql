SELECT a.DNI, p.Apellido, p.Nombre, ac.Calificación
FROM ALUMNO a INNER JOIN PERSONA p ON (a.DNI = p.DNI)
    INNER JOIN ALUMNO-CURSO ac ON (a.DNI = ac.DNI)
    INNER JOIN PROFESOR-CURSO pc ON (ac.Cod_Curso = pc.Cod_Curso)
    INNER JOIN Profesor prof ON (pc.DNI = prof.DNI)
    INNER JOIN Persona p2 ON (prof.DNI = p2.DNI)
WHERE (ac.Calificacion > 9) AND (p2.Nombre = "Juan") AND (p2.Apellido = "Garcia")
ORDER BY p.Apellido