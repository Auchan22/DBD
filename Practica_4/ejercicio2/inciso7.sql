SELECT a.especie
FROM arbol a
INNER JOIN localidad l ON l.codigoPostal = a.codigoPostal
WHERE l.nombreL = 'La Plata'
INTERSECT (
	SELECT a.especie
	FROM arbol a
	INNER JOIN localidad l ON l.codigoPostal = a.codigoPostal
	WHERE l.nombreL = 'Salta'
)