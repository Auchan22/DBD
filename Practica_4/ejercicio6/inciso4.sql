SELECT DISTINCT t.nombre, t.especialidad
FROM tecnico t
INNER JOIN reparacion r ON r.codTec = t.codTec
WHERE YEAR(r.fecha) = 2022

EXCEPT 

SELECT t.nombre, t.especialidad
FROM tecnico t
INNER JOIN reparacion r ON r.codTec = t.codTec
WHERE YEAR(r.fecha) <> 2022