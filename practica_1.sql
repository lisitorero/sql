
--BASE DE DATOS "EUREKABANC"

select * from CargoMantenimiento cm 


elect * from Cliente c 

select * from Movimiento m 

select * from Cuenta c 

select c2.vch_cliepaterno, c2.vch_cliematerno, c.dec_cuensaldo 
from Cuenta c , Cliente c2 
WHERE c.chr_cliecodigo = c2.chr_cliecodigo


SELECT * from Empleado e 

select e.vch_emplpaterno , c.chr_cuencodigo , c.dtt_cuenfechacreacion, s.vch_sucunombre , s.vch_sucuciudad  
from Empleado e,  Cuenta c , Sucursal s 
where e.chr_emplcodigo = c.chr_emplcreacuenta 
and s.chr_sucucodigo = c.chr_sucucodigo 

SELECT * from Movimiento m 

select m.chr_cuencodigo, COUNT(*) as numero_movimientos, SUM(m.dec_moviimporte) as total_monto 
from Movimiento m
GROUP by m.chr_cuencodigo

select * from Moneda m

select m.vch_monedescripcion, COUNT(*) as cuentas_tipo, SUM(c.dec_cuensaldo), AVG(c.dec_cuensaldo)  
from Moneda m , Cuenta c 
where m.chr_monecodigo = c.chr_monecodigo 
group by m.vch_monedescripcion 

SELECT * from Asignado a  

select * from Modulo m 

select * from Parametro p 

--- consultas

