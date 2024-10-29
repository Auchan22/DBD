/*
	Utilizo left join para tener en cuenta aquellos que no tuvieron recital.
	Si solo quiero mostrar aquellos que al menso tuvieron 1, utilizo INNER JOIN
*/

SELECT e.nombre_escenario, COUNT(r.*) AS Cantidad
FROM escenario e
LEFT JOIN recital r ON r.nroEscenario = e.nroEscenario AND YEAR(r.fecha) = 2024
GROUP BY e.nroEscenario, e.nombre_escenario