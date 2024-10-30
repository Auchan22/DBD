SELECT a.*
FROM agencia a
INNER JOIN viaje v ON v.razon_social = a.razon_social
WHERE YEAR(v.fecha) = 2019
UNION (
	SELECT a.*
	FROM agencia a
	WHERE a."e-mail" LIKE '%@jmail.com'
)