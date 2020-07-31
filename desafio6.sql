SELECT DISTINCT
CONCAT(emp.FIRST_NAME, ' ', emp.LAST_NAME) AS `Nome completo`,
(SELECT j.JOB_TITLE FROM hr.jobs AS j WHERE j.JOB_ID = jh.JOB_ID) AS Cargo,
DATE_FORMAT(jh.START_DATE, '%Y-%m-%d') AS "Data de início do cargo",
(
  SELECT d.DEPARTMENT_NAME FROM hr.departments AS d
  WHERE jh.DEPARTMENT_ID = d.DEPARTMENT_ID
) AS "Departamento"
FROM hr.job_history AS jh
INNER JOIN hr.employees AS emp
ON jh.EMPLOYEE_ID = emp.EMPLOYEE_ID
ORDER BY `Nome completo` DESC, CARGO;
