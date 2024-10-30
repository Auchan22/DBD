/*
SELECT r.nombre, r.stock, r.precio
FROM repuesto r
WHERE r.stock > 0
AND NOT EXISTS (
	SELECT 1
	FROM RepuestoReparacion rr
	WHERE rr.codRep = r.codRep
	AND rr.precio > 10000
)
*/

SELECT r.nombre, r.stock, r.precio
FROM repuesto r
WHERE r.stock > 0
AND r.codRep NOT IN (
	SELECT rr.codRep
	FROM RepuestoReparacion rr
	WHERE rr.precio > 10000
)