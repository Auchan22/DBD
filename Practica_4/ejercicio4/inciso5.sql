SELECT po.dni, p.apellido, p.nombre, po.matricula
FROM profesor po
INNER JOIN persona p ON p.dni = po.dni
INNER JOIN titulo-profesor tp ON tp.dni = po.dni
GROUP BY po.dni, p.apellido, p.nombre, p.matricula
HAVING COUNT (tp.cod_titulo) > 3
ORDER BY p.apellido, p.nombre