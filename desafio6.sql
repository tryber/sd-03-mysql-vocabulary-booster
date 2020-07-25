SELECT CONCAT (e.FIRST_NAME, ' ', e.LAST_NAME) AS 'Nome completo',
(SELECT j.JOB_TITLE FROM hr.jobs AS j WHERE j.JOB_ID = jh.JOB_ID) AS 'Cargo',
jh.START_DATE AS 'Data de início do cargo',
d.DEPARTMENT_NAME AS 'Departamento'
FROM hr.employees AS e
INNER JOIN hr.jobs AS j
ON e.JOB_ID = j.JOB_ID
INNER JOIN hr.job_history AS jh
ON e.EMPLOYEE_ID = jh.EMPLOYEE_ID
INNER JOIN hr.departments AS d
ON jh.DEPARTMENT_ID = d.DEPARTMENT_ID
ORDER BY `Nome completo` DESC, `Cargo` ASC;
