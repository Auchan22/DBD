SELECT r.nombre, r.stock, COUNT(DISTINCT re.codTEC) AS Cantidad_Tecnicos
FROM repuesto r
LEFT JOIN RepuestoReparacion rr ON rr.codRep = r.codRep
LEFT JOIN reparacion re ON re.nroReparac = rr.nroReparac
GROUP BY r.codRep, r.nombre, r.stock