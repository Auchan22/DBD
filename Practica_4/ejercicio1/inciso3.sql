use ejercicio1;

/**
 * Listar nombre, descripción, precio y stock de productos vendidos al cliente con DNI 45789456,
pero que no fueron vendidos a clientes de apellido ‘Garcia’.
 */

select p.nombreP, p.descripcion, p.precio, p.stock 
from producto p
inner join detalle d on d.idProducto = p.idProducto 
inner join factura f on f.nroTicket = d.nroTicket
inner join cliente c on c.idCliente = f.idCliente
where c.dni = '45789456'
and p.idProducto not in (
	select pr.idProducto 
	from producto pr
	inner join detalle de on de.idProducto = pr.idProducto 
	inner join factura fa on fa.nroTicket = de.nroTicket
	inner join cliente cl on cl.idCliente = fa.idCliente
	where cl.apellido like 'Garcia'
);