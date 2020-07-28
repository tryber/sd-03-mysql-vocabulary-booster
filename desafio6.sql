SELECT 
    CONCAT(a.FIRST_NAME, ' ', a.LAST_NAME) AS `Nome completo`,
    b.JOB_TITLE AS Cargo,
    c.START_DATE AS `Data de início do cargo`,
    d.DEPARTMENT_NAME AS `Departamento`
FROM
    hr.employees AS a
        INNER JOIN
    hr.jobs AS b
        INNER JOIN
    hr.job_history AS c
        INNER JOIN
    hr.departments AS d
WHERE
    a.EMPLOYEE_ID = c.EMPLOYEE_ID
        AND b.JOB_ID = c.JOB_ID
        AND d.DEPARTMENT_ID = c.DEPARTMENT_ID
ORDER BY `Nome Completo` DESC;
