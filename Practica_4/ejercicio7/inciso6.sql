SELECT j.nombre, j.apellido, j.edad, SUM(DISTINCT cj.codigoClub) AS cantidad_clubes
FROM jugador j
INNER JOIN ClubJugador cj ON cj.dni = j.dni
GROUP BY j.dni, j.nombre, j.apellido, j.edad