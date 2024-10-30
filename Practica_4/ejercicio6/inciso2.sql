SELECT r.nombre, r.stock, r.precio
FROM repuesto r
INNER JOIN RepuestoReparacion rr ON rr.codRep = r.codRep
INNER JOIN reparacion re ON re.nroReparac = rr.nroReparac
WHERE YEAR(re.fecha) = 2023
EXCEPT 
	SELECT r.nombre, r.stock, r.precio
	FROM repuesto r
	INNER JOIN RepuestoReparacion rr ON rr.codRep = r.codRep
	INNER JOIN reparacion re ON re.nroReparac = rr.nroReparac
	INNER JOIN tecnico t ON t.codTec = re.codTec
	WHERE t.nombre = 'José Gonzalez'
