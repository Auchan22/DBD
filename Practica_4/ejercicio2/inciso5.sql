SELECT po.dni, po.nombre, po.apellido, po.fnac, l.nombreL
FROM podador po
INNER JOIN localidad l ON l.codigoPostal = po.codigoPostalVive
WHERE po.apellido LIKE '%ata'
AND EXISTS (
	SELECT p.*
	FROM poda p
	WHERE YEAR(p.fecha) = 2024
	AND p.dni = po.dni
)
ORDER BY po.apellido, po.nombre