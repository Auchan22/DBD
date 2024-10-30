SELECT c.nombre, c.apellido, c.direccion, c.telef
FROM cliente c
INNER JOIN viaje v ON v.dni = c.dni
GROUP BY c.dni, c.nombre, c.apellido, c.direccion, c.telef
HAVING COUNT(DISTINCT v.razon_social) = (SELECT COUNT(*) FROM agencia)