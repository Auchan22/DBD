SELECT a.dni, a.Legajo, p.Apellido, p.Nombre
FROM alumno a
INNER JOIN persona p ON p.dni = a.dni
WHERE a.año_ingreso < 2014