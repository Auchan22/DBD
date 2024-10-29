SELECT b.nombreBanda, r.fecha, r.hora, e.nombre_escenario, e.ubicacion
FROM banda b
INNER JOIN recital r ON r.codigoB = b.codigoB
INNER JOIN escenario e ON e.nroEscenario = r.nroEscenario
WHERE r.fecha = '2023-12-04'