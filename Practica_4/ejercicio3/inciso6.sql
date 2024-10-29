SELECT e.nombre_escenario, e.ubicacion, e.descripcion
FROM escenario e
INNER JOIN recital r ON r.nroEscenario = e.nroEscenario
INNER JOIN banda b ON b.codigoB = r.codigoB
WHERE b.genero_musical = 'Rock and Roll'
EXCEPT (
	SELECT e.nombre_escenario, e.ubicacion, e.descripcion
	FROM escenario e
	INNER JOIN recital r ON r.nroEscenario = e.nroEscenario
	INNER JOIN banda b ON b.codigoB = r.codigoB
	WHERE b.genero_musical <> 'Rock and Roll'
)
ORDER BY e.nombre_escenario