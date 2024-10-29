SELECT po.dni, po.nombre, po.apellido, po.fnac, a.telefono
FROM podador po
INNER JOIN poda p ON p.dni = po.dni
INNER JOIN arbol a ON a.nroArbol = p.nroArbol
WHERE a.especie = 'Coníferas'
EXCEPT (
	SELECT po.dni, po.nombre, po.apellido, po.fnac, a.telefono
	FROM podador po
	INNER JOIN poda p ON p.dni = po.dni
	INNER JOIN arbol a ON a.nroArbol = p.nroArbol
	WHERE a.especie <> 'Coníferas'
)