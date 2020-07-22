SELECT
CONCAT(e.FIRST_NAME, ' ', e.LAST_NAME) AS "Nome completo",
(SELECT j.JOB_TITLE FROM hr.jobs AS j WHERE j.JOB_ID = e.JOB_ID LIMIT 1) AS Cargo,
e.HIRE_DATE AS "Data de início do cargo",
(SELECT d.DEPARTMENT_NAME FROM hr.departments AS d WHERE e.DEPARTMENT_ID = d.DEPARTMENT_ID LIMIT 1) AS "Departamento"
FROM hr.employees AS e
ORDER BY CONCAT(e.FIRST_NAME, ' ', e.LAST_NAME) DESC, Cargo ASC;
SELECT * FROM hr.employees
where CONCAT(FIRST_NAME, ' ', LAST_NAME) = 'Neena Kochhar';
SELECT * FROM hr.jobs WHERE JOB_ID = "AD_VP";