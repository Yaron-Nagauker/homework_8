// homework 8

create or replace FUNCTION  sp_statistics(x double precision, y double precision ,OUT the_mul double precision,
     OUT the_div double precision, OUT sqrt_x double precision, OUT sqrt_y double precision, 
     OUT power_x_y double precision) 

LANGUAGE 'plpgsql' AS
    $$
        BEGIN
            	the_mul:=x*y;
		the_div:=x/y;
		sqrt_x:=(select * from sqrt(x));
		sqrt_y:=(select * from sqrt(y));
		power_x_y:=(select * from power(x, y));


        END;
    $$;

select * from sp_statistics(9,16);
