SELECT b.nombreBanda, b.genero_musical, b.año_creacion
FROM banda b
INNER JOIN recital r ON b.codigoB = r.codigoB
WHERE YEAR(r.fecha) = 2023
EXCEPT (
	SELECT b.nombreBanda, b.genero_musical, b.año_creacion
	FROM banda b
	INNER JOIN recital r ON b.codigoB = r.codigoB
	WHERE YEAR(r.fecha) = 2022
)