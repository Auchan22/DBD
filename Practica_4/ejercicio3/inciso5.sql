SELECT b.nombreBanda, b.genero_musical, b.año_creacion
FROM banda b
INNER JOIN integrante i ON i.codigoB = b.codigoB
GROUP BY b.codigoB, b.nombreBanda, b.genero_musical, b.año_creacion
HAVING COUNT(i.dni) > 8;