SELECT r.nombre, r.stock, r.precio
FROM repuesto r
WHERE NOT EXISTS (
	SELECT rr.codRep
	FROM RepuestoReparacion rr
	EXCEPT (
		SELECT r2.codRep
		FROM repuesto r2, RepuestoReparacion rr2
		WHERE (r2.codRep = rr2.codRep) AND (r2.codRep = r.codRep)
	)
)

-- Alternativa similar a ejemplo del libro

SELECT r.nombre, r.stock, r.precio
FROM repuesto r
WHERE NOT EXISTS (
    SELECT 1
    FROM tecnico t
    WHERE NOT EXISTS (
        SELECT 1
        FROM RepuestoReparacion rr
        WHERE rr.codRep = r.codRep AND rr.codTec = t.codTec
    )
);