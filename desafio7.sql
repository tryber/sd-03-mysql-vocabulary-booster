SELECT UCASE(CONCAT(E.FIRST_NAME,' ', E.LAST_NAME)) AS 'Nome completo',
E.HIRE_DATE AS 'Data de início',
E.SALARY AS 'Salário'
FROM hr.employees AS E, hr.jobs AS J
WHERE (E.JOB_ID = J.JOB_ID)
ORDER BY CONCAT(E.FIRST_NAME,' ', E.LAST_NAME) ASC, E.HIRE_DATE ASC;
