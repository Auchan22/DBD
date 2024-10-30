SELECT r.fecha, t.nombre, r.precio_total
FROM Reparacion r
INNER JOIN tecnico t ON r.codTec = t.codTec
INNER JOIN RepuestoReparacion rr ON rr.nroReparac = r.nroReparac
GROUP BY r.nroReparac, t.nombre, r.precioTotal, r.fecha
HAVING COUNT(DISTINCT rr.codRep) >= 10