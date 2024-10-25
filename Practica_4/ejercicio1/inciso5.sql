use ejercicio1;

/*
 * Listar para cada producto nombre, descripción, precio y cuantas veces fue vendido. Tenga en
cuenta que puede no haberse vendido nunca el producto.
 */

select p.nombreP, p.descripcion, p.precio, SUM(d.cantidad) as Cantidad
from producto p
left join detalle d on d.idProducto = p.idProducto
group by p.nombreP, p.descripcion, p.precio, p.idProducto;