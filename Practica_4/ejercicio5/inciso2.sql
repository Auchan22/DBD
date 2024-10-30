SELECT v.fecha, v.hora, c.*, co.nombreCiudad AS ciudadOrigen, cd.nombreCiudad AS ciudadDestino
FROM viaje v
INNER JOIN cliente c ON c.dni = v.dni
INNER JOIN ciudad co ON co.codigopostal = v.cpOrigen
INNER JOIN ciudad cd ON cd.codigopostal = v.cdDestino
WHERE MONTH(v.fecha) = 1 AND YEAR(v.fecha) = 2019
AND v.descripcion LIKE '%demorado%'