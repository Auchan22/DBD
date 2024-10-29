SELECT l.nombreL, l.descripcion, l.habitantes
FROM localidad l
INNER JOIN arbol a ON a.codigoPostal = l.codigoPostal
GROUP BY l.codigoPostal, l.nombreL, l.descripcion, l.habitantes
HAVING COUNT(a.nroArbol) < 100;