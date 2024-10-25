use ejercicio1;

/**
Listar nroTicket, total, fecha, hora para las facturas del cliente  ́Jorge Pérez ́ donde no haya
comprado el producto  ́Z ́.
*/

select f.nroTicket, f.total, f.fecha, f.hora
from factura f
inner join cliente c on c.idCliente = f.idCliente
inner join detalle d on d.nroTicket = f.nroTicket
inner join producto p on p.idProducto = d.idProducto
where c.nombre = 'Juan' and c.apellido = 'Pérez'
and f.nroTicket not in  (
	SELECT d.nroTicket
    FROM detalle d
    INNER JOIN producto p ON d.idProducto = p.idProducto
    WHERE p.nombreP = 'Z'
)