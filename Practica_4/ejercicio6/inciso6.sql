SELECT t.nombre, t.especialidad
FROM tecnico t
INNER JOIN reparacion r ON r.codTec = t.codTec
GROUP BY t.codTec, t.nombre, t.especialidad 
ORDER BY COUNT(r.nroReparac) DESC
LIMIT 1

UNION ALL 

SELECT t.nombre, t.especialidad
FROM tecnico t
INNER JOIN reparacion r ON r.codTec = t.codTec
GROUP BY t.codTec, t.nombre, t.especialidad 
ORDER BY COUNT(r.nroReparac) ASC
LIMIT 1