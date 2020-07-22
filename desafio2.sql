select * from jobs;

select job_title as Cargo, 
case 
WHEN max_SALARY BETWEEN (5000) AND (10000) THEN 'Baixo'
WHEN max_SALARY BETWEEN (10001) AND (20000) THEN 'Médio'
WHEN max_SALARY BETWEEN (20001) AND (30000) THEN 'Alto'
ELSE 'Altíssimo'
END AS Nível
from hr.jobs
Order by 1;
