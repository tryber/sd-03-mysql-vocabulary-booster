SELECT 
upper(CONCAT(FIRST_NAME," ",LAST_NAME)) as "Nome completo",
HIRE_DATE AS "Data de início",
SALARY as "Salário" 
FROM hr.employees;
