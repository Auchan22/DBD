SELECT c.nombre, AVG(j.edad) AS edadPromedio
FROM club c
LEFT JOIN ClubJugador cj ON cj.codigoClub = c.codigoClub
INNER JOIN jugador j ON cj.dni = j.dni
WHERE cj.hasta IS NULL
GROUP BY c.codigoClub, c.nombre