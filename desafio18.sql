delimiter $$
create function exibir_quantidade_pessoas_contratadas_por_mes_e_ano(mes int, ano int)
returns int reads sql data
begin
declare quantity int;
select count(*) from (select * from employees
where month(hire_date)=mes and year(hire_date) = ano) as t into quantity;
return quantity;
end$$
delimiter ;

select exibir_quantidade_pessoas_contratadas_por_mes_e_ano(6, 1987);
