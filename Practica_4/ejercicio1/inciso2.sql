use ejercicio1;

/**
 * Listar nombre, apellido, DNI, teléfono y dirección de clientes que realizaron compras solamente
durante 2017.
 */

select c.nombre, c.apellido, c.dni, c.telefono, c.direccion
from cliente c
inner join Factura f on f.idCliente = c.idCliente
where year(f.fecha) = 2017
except (
	select c.nombre, c.apellido, c.dni, c.telefono, c.direccion
	from cliente c
	inner join Factura f on f.idCliente = c.idCliente
	where year(f.fecha) <> 2017
);