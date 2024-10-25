use ejercicio1;

/*
Listar nroTicket, total, fecha, hora y DNI del cliente, de aquellas facturas donde se haya
comprado el producto ‘prod38’ o la factura tenga fecha de 2019.
*/

select f.nroTicket, f.total, f.fecha, f.hora, c.dni
from factura f
inner join cliente c on c.idCliente = f.idCliente
inner join detalle d on d.nroTicket = f.nroTicket
inner join producto p on p.idProducto = d.idProducto
where p.nombreP = 'prod38' or year(f.fecha) = 2019