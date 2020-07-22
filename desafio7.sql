SELECT
UCASE(CONCAT(e.FIRST_NAME, ' ', e.LAST_NAME)) AS "Nome completo",
e.HIRE_DATE AS "Data de início",
e.SALARY AS Salário
FROM hr.employees AS e;
