SELECT Cargo,`Média salarial`, 
CASE
WHEN `Média salarial` > 2000 AND `Média salarial` <= 5800 THEN "Júnior"
WHEN `Média salarial` > 5800 AND `Média salarial` <= 7500 THEN "Pleno"
WHEN `Média salarial` > 7500 AND `Média salarial` <= 10500 THEN "Sênior"
ELSE "CEO"
END AS "Senioridade"
from (SELECT JOB_TITLE AS "Cargo", ROUND(AVG(SALARY),2) AS "Média salarial"
FROM hr.employees e
inner join hr.jobs j
on j.JOB_ID = e.JOB_ID
group by j.JOB_ID) t
ORDER BY `Média salarial`,`Cargo`
