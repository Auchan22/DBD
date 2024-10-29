SELECT i.dni, i.nombre, i.apellido, i.email
FROM integrante i
INNER JOIN banda b ON b.codigoB = i.codigoB
INNER JOIN recital r ON r.codigoB = b.codigoB
INNER JOIN escenario e ON e.nroEscenario = r.nroEscenario
WHERE e.nombre_escenario = 'Gustavo Cerati'
INTERSECT (
	SELECT i.dni, i.nombre, i.apellido, i.email
	FROM integrante i
	INNER JOIN banda b ON b.codigoB = i.codigoB
	INNER JOIN recital r ON r.codigoB = b.codigoB
	INNER JOIN escenario e ON e.nroEscenario = r.nroEscenario
	WHERE e.nombre_escenario = 'Carlos Gardel'
)