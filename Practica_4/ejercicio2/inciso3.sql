SELECT a.especie, a.años, a.calle, a.nro, l.nombreL
FROM arbol a
INNER JOIN localidad l ON l.codigoPostal = a.codigoPostal
WHERE a.nroArbol NOT IN (
	SELECT nroArbol 
	FROM poda
)

/**
	
	SELECT a.especie, a.años, a.calle, a.nro, l.nombreL
	FROM arbol a
	LEFT JOIN poda po on po.nroArbol = a.nroArbol
	JOIN localidad l ON l.codigoPostal = a.codigoPostal
	WHERE po.nroArbol IS NULL;
*/