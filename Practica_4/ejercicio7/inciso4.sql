SELECT j.dni, j.nombre, j.apellido 
FROM jugador j
INNER JOIN ClubJugador cj ON cj.dni = j.dni
WHERE j.edad > 29
AND cj.codigoClub IN (
	SELECT c.codigoClub
	FROM club c
	INNER JOIN ciudad ci ON ci.codigoCiudad = c.codigoCiudad
	WHERE ci.nombre = 'Córdoba'
)