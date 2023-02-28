select * from cargo c 
where c.sueldo_min >3000 AND c.sueldo_max < 10000
order by c.sueldo_min DESC

select * from empleado e 

select e.idempleado , e.apellido, e.nombre , e.fecingreso , c.nombre  from empleado e , cargo c 
where e.idcargo = c.idcargo 
GROUP by e.idempleado 

select d.iddepartamento, d.nombre , count(*) as numero_empleados  from departamento d , empleado e 
where d.iddepartamento = e.iddepartamento
group BY d.iddepartamento 

select * from empleado e 
select * from cargo c 
select * from departamento d 
select * from ubicacion u

select u.idubicacion , u.ciudad , COUNT(*) as numero_empleados_ubicacion  from ubicacion u , empleado e , departamento d 
where u.idubicacion = d.idubicacion and d.iddepartamento = e.iddepartamento 
GROUP BY u.idubicacion 

select e.idempleado,e.apellido , e.nombre , e.fecingreso , c.nombre , AVG( c.sueldo_min) from empleado e , cargo c 
where e.idcargo = c.idcargo
group BY e.idempleado 
ORDER BY c.sueldo_min 

