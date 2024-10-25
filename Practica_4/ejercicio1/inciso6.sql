use ejercicio1;

/**
 * Listar nombre, apellido, DNI, teléfono y dirección de clientes que compraron los productos con
nombre ‘prod1’ y ‘prod2’ pero nunca compraron el producto con nombre ‘prod3’.
 */

select c.nombre, c.apellido, c.dni, c.telefono, c.direccion
from cliente c
inner join factura f on f.idCliente = c.idCliente
inner join detalle d on d.nroTicket = f.nroTicket
inner join producto pr on pr.idProducto = d.idProducto
where pr.nombreP in ('prod1', 'prod2')
and c.idCliente not in (
	select c.idCliente
	from cliente c 
	inner join factura f on f.idCliente = c.idCliente
	inner join detalle d on d.nroTicket = f.nroTicket
	inner join producto pr on pr.idProducto = d.idProducto	
	where pr.nombreP = 'prod3'
)
GROUP BY c.idCliente
#Verifico que el cliente haya comprado ambos productos
HAVING COUNT(DISTINCT pr.nombreP) = 2;

-- Insertar clientes
INSERT INTO Cliente (nombre, apellido, dni, telefono, direccion) VALUES
('Juan', 'Pérez', '45789456', '123456789', 'Calle Falsa 123'),
('Ana', 'Garcia', '45789457', '987654321', 'Calle Verdadera 456'),
('Luis', 'López', '45789458', '654123789', 'Avenida Siempre Viva 742'),
('Maria', 'Martinez', '45789459', '789321654', 'Calle de Prueba 555');

-- Insertar productos
INSERT INTO Producto (nombreP, descripcion, precio, stock) VALUES
( 'prod1', 'Producto 1', 100, 50),
( 'prod2', 'Producto 2', 200, 30),
( 'prod3', 'Producto 3', 300, 20),
( 'prod4', 'Producto 4', 400, 15);

-- Insertar facturas
INSERT INTO Factura (total, fecha, hora, idCliente) VALUES
( 300, '2023-01-01', '10:00:00', 1), -- Cliente 1 compra prod1 y prod2
( 200, '2023-01-02', '11:00:00', 2), -- Cliente 2 compra prod1 y prod3
( 100, '2023-01-03', '12:00:00', 3), -- Cliente 3 compra solo prod1
( 200, '2023-01-04', '13:00:00', 4); -- Cliente 4 compra prod1 y prod2

-- Insertar detalles de las facturas
INSERT INTO Detalle (nroTicket, idProducto, cantidad, preciounitario) VALUES
(1, 1, 1, 100), -- Cliente 1 compra prod1
(1, 2, 1, 200), -- Cliente 1 compra prod2
(2, 1, 1, 100), -- Cliente 2 compra prod1
(2, 3, 1, 100), -- Cliente 2 compra prod3
(3, 1, 1, 100), -- Cliente 3 compra solo prod1
(4, 1, 1, 100), -- Cliente 4 compra prod1
(4, 2, 1, 100); -- Cliente 4 compra prod2