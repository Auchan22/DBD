SELECT b.nombreBanda, b.genero_musical, b.año_creacion
FROM banda b
INNER JOIN recital r ON r.codigoB = b.codigoB
INNER JOIN escenario e ON e.nroEscenario = r.nroEscenario
WHERE YEAR(r.fecha) = 2023
AND e.cubierto = true