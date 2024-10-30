SELECT j.dni, j.nombre, j.apellido
FROM jugador j
INNER JOIN ClubJugador cj ON cj.dni = j.dni
INNER JOIN club c ON cj.codigoClub = c.codigoClub
WHERE c.nombre = 'Gimnasia y Esgrima La Plata'