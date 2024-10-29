SELECT a.especie, a.años, a.calle, a.nro, l.nombreL
FROM arbol a
INNER JOIN localidad l ON l.codigoPostal = a.codigoPostal
INNER JOIN poda p ON p.nroArbol = a.nroArbol
WHERE (YEAR(p.fecha) = 2022) AND a.nroArbol NOT IN (
	SELECT p.nroArbol
	FROM poda p
	WHERE YEAR(p.fecha) = 2023
)