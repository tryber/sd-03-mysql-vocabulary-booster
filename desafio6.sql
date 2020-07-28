SELECT 
    CONCAT(emp.FIRST_NAME, ' ', emp.LAST_NAME) AS `Nome completo`,
    jobs.JOB_TITLE AS `Cargo`,
    h.START_DATE AS 'Data de início do cargo',
    dpmts.DEPARTMENT_NAME AS 'Departamento'
FROM
    hr.job_history AS h
        INNER JOIN
    hr.jobs AS jobs ON h.JOB_ID = jobs.JOB_ID
        INNER JOIN
    hr.employees AS emp ON emp.EMPLOYEE_ID = h.EMPLOYEE_ID
        INNER JOIN
    hr.departments AS dpmts ON h.DEPARTMENT_ID = dpmts.DEPARTMENT_ID
ORDER BY `Nome completo` DESC , `Cargo` ASC;
