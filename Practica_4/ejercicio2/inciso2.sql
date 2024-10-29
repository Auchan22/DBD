SELECT po.dni, po.nombre, po.apellido, po.fnac, l.nombreL
FROM podador po
INNER JOIN localidad l ON l.codigoPostal = po.codigoPostalVive
INNER JOIN poda p ON p.dni = po.dni
WHERE YEAR(p.fecha) = 2023