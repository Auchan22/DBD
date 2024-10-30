SELECT c.*
FROM cliente c
INNER JOIN viaje v ON v.dni = c.dni
INNER JOIN ciudad ci ON ci.codigopostal = v.cpDestino
WHERE ci.nombreCiudad = 'Coronel Brandsen'
EXCEPT (
	SELECT c.*
	FROM cliente c
	INNER JOIN viaje v ON v.dni = c.dni
	INNER JOIN ciudad ci ON ci.codigopostal = v.cpDestino
	WHERE ci.nombreCiudad <> 'Coronel Brandsen'
)
