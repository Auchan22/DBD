SELECT i.dni, i.nombre, i.apellido, i.direccion, i.email
FROM integrante i
WHERE YEAR(i.fecha_nacimiento) BETWEEN 1980 AND 1990
AND EXISTS (
	SELECT b.*
	FROM banda b
	INNER JOIN recital r ON r.codigoB = b.codigoB
	WHERE YEAR(r.fecha) = 2023
	AND i.codigoB = b.codigoB
)