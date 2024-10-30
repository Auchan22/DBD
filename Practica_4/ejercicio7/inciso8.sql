SELECT j.nombre, j.apellido
FROM jugador j
WHERE j.dni IN (
	SELECT cj.dni
	FROM ClubJugador cj
	INNER JOIN club c ON c.codigoClub = cj.codigoClub
	INNER JOIN ciudad ci ON ci.codigoCiudad = c.codigoCiudad
	WHERE ci.nombre = 'Córdoba'
)