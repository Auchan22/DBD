SELECT a.razon_social, a.direccion, a.telef 
FROM agencia a
INNER JOIN viaje v ON v.razon_social = a.razon_asocial
GROUP BY a.razon_social, a.direccion, a.telef 
HAVING COUNT(v.razon_social)