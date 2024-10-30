SELECT r.nroReparac, r.fecha, r.precio_total
FROM reparacion r
INNER JOIN RepuestoReparacion rr ON rr.nroReparac = r.nroReparac
WHERE rr.precio BETWEEN 10000 AND 15000