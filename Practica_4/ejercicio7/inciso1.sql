SELECT c.nombre, c.anioFundacion
FROM club c
INNER JOIN ciudad ci ON ci.codigoCiudad = c.codigoCiudad
LEFT JOIN Estadio e ON e.codigoClub = c.codigoClub
WHERE ci.nombre = 'La Plata'
AND e.codigoEstadio IS NULL