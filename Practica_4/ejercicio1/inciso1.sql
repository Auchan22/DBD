use ejercicio1;

/**
 * Listar datos personales de clientes cuyo apellido comience con el string ‘Pe’. Ordenar por DNI
 */
select c.nombre, c.apellido, c.dni, c.telefono, c.direccion 
from cliente c
where c.apellido like 'Pe%'
order by c.dni;