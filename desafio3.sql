select job_title as Cargo, 
max_salary - min_salary as 
'Diferença entre salários máximo e mínimo'
from hr.jobs
Order by 2,1;
