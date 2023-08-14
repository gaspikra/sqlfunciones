use hoteles;
create function hab_libres(libre varchar(9),capacity int)
returns int
deterministic
return (select count(*) from habitaciones where estado=libre and capacidad=capacity);
select hab_libress('libre',4);

create function entidad_clientes (banco varchar(20))
returns int
deterministic
return(select count(*) from datos_bancario where entidad=banco);
select entidad_clientes('banco macro');