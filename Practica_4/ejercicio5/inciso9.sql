SELECT c.nombre, c.apellido, c.direccion, c.telefono
FROM cliente c
INNER JOIN viaje v ON v.dni = c.dni
GROUP BY c.dni, c.nombre, c.apellido, c.direccion, c.telefono
HAVING COUNT(v.dni) >= 10