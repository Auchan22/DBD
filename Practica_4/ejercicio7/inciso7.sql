SELECT c.nombre
FROM club c
WHERE NOT EXISTS (
	SELECT 1 
	FROM ClubJugador cj
	INNER JOIN jugador j ON cj.dni = j.dni
	WHERE cj.codigoClub = c.codigoClub
	AND j.codigoCiudad = (
		SELECT ci.codigoCiudad
		FROM ciudad ci
		WHERE ci.nombre = 'Mar del Plata'
	)
)