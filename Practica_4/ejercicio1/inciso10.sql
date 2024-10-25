use ejercicio1;

/**
 * 
 * Listar DNI, apellido y nombre de clientes donde el monto total comprado, teniendo en cuenta
todas sus facturas, supere $10.000.000.
 */
select c.dni, c.apellido, c.nombre
from cliente c
inner join factura f on f.idCliente = c.idCliente
group by c.idCliente
having sum(f.total) > 150;