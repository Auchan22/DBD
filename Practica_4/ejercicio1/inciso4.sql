use ejercicio1;

/**
 * Listar nombre, descripción, precio y stock de productos no vendidos a clientes que tengan
teléfono con característica 221 (la característica está al comienzo del teléfono). Ordenar por
nombre.
 */

select p.nombreP, p.descripcion, p.precio, p.stock 
from producto p
where p.idProducto not in (
	select pr.idProducto
	from producto pr
	inner join detalle d on d.idProducto = pr.idProducto
	inner join factura f on f.nroTicket = d.nroTicket
	inner join cliente c on c.idCliente = f.idCliente
	where c.telefono like '221%'
)
order by p.nombreP;