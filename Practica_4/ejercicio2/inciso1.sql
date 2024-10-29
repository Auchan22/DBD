SELECT a.especie, a.años, a.calle, a.nro, l.nombreL
FROM arbol a
INNER JOIN localidad l ON l.codigoPostal = a.codigoPostal
INNER JOIN poda p ON p.nroArbol = a.nroArbol
INNER JOIN podador po ON po.dni = p.dni
WHERE (po.nombre = 'Juan' AND po.apellido = 'Perez') OR (po.nombre = 'Jose' AND po.apellido = 'Garcia')