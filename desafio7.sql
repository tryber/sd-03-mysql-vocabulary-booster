SELECT UCASE(CONCAT(e.FIRST_NAME, ' ', e.LAST_NAME)) AS 'Nome completo',
e.HIRE_DATE AS 'Data de início',
e.SALARY Salário FROM hr.employees e
ORDER BY CONCAT(e.FIRST_NAME, ' ', e.LAST_NAME), e.HIRE_DATE;
