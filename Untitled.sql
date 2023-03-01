select t.* , p.titulo , p.autor from publicacion p, tipo t 
where t.idtipo = p.idtipo

--AGRUPACION POR CAMPOS

select p.autor , COUNT(*) as numero_publicaciones from publicacion p
group by p.autor

--busqueda por distintos valores

select * from publicacion  p
where p.titulo like "Visual%" or p.titulo LIKE "Power%"

--precio promedio de libros por autor y cantidad

select p.autor ,  COUNT(*), AVG(p.precio) AS precio_promedio from publicacion p
group by p.autor

--ventas x cliente

select v.cliente , count(*) as ventas_x_cliente 
from venta v
group by v.cliente

--ventas por empleado
select v.idempleado, e.nombre , v.cliente , v.fecha, v.total from venta v, empleado e  
where v.idempleado = e.idempleado

--ventas por empleado
select v.idempleado, e.nombre, SUM(v.total) from venta v, empleado e  
where v.idempleado = e.idempleado
group by v.idempleado 

--ventas por mes
select * from venta v 
WHERE MONTH (v.fecha)= 12

--que libros se vendio 
select t.descripcion, p.titulo, COUNT(*) as cantidad_vendida 
from publicacion p , venta v , tipo t 
where p.idpublicacion = v.idpublicacion and t.idtipo = p.idtipo  
GROUP by t.descripcion , p.titulo 

--ventas por tipo

select t.descripcion , COUNT(*) as venta_x_tipo from tipo t , venta v, publicacion p  
where t.idtipo = p.idtipo 
and p.idpublicacion = v.idpublicacion 
group by t.descripcion






