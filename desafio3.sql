select D.Cargo, D.diff as 'Diferença entre salários máximo e mínimo' from (select job_title as Cargo,  (select max_salary - min_salary ) as diff 
from jobs) as D
order by D.diff, D.Cargo;
