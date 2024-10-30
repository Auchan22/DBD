SELECT t.nombre, t.especialidad
FROM tecnico t
LEFT JOIN reparacion r ON r.codTec = t.codTec
WHERE r.nroReparac IS NULL
ORDER BY t.nombre ASC