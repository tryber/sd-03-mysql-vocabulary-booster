SELECT Cargo, `Média salarial`, 
CASE
WHEN `Média salarial` BETWEEN 2000 AND 5800 THEN 'Júnior'
WHEN `Média salarial` BETWEEN 5801 AND 7500 THEN 'Pleno'
WHEN `Média salarial` BETWEEN 7501 AND 10500 THEN 'Sênior'
WHEN `Média salarial` > 10500 THEN 'CEO'
END AS Senioridade FROM
(SELECT A.JOB_TITLE AS Cargo, ROUND(AVG(B.SALARY), 2) AS `Média salarial`
FROM hr.employees AS B 
INNER JOIN hr.jobs AS A
WHERE	 B.JOB_ID = A.JOB_ID  
GROUP BY Cargo
ORDER BY `Média salarial`) As T;
