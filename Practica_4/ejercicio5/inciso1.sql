SELECT a.razon_social, a.direccion, a.telef
FROM agencia a
INNER JOIN Viaje v ON v.razon_social = a.razon_social
INNER JOIN cliente c ON c.dni = v.dni
INNER JOIN ciudad ci ON ci.codigopostal = v.cpOrigen
WHERE c.apellido = 'Roma'
AND ci.nombreCiudad = 'La Plata'
ORDER BY a.razon_social, a.telef