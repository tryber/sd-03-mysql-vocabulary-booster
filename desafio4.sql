SELECT Cargo,`Média Salarial`, 
	CASE
		WHEN `Média Salarial` > 2000 AND `Média Salarial` <= 5800 THEN "Júnior"
        WHEN `Média Salarial` > 5800 AND `Média Salarial` <= 7500 THEN "Pleno"
        WHEN `Média Salarial` > 7500 AND `Média Salarial` <= 10500 THEN "Sênior"
        ELSE "CEO"
	END AS "Senioridade"
 from (SELECT JOB_TITLE AS "Cargo",  ROUND((MAX_SALARY + MIN_SALARY) / 2,2) AS "Média Salarial" from hr.jobs) t ORDER BY `Média Salarial`
