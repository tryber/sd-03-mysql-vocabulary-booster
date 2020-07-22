SELECT 
    jhis.start_date,
    emp.employee_id,
    CONCAT(first_name, ' ', last_name) AS `Nome Completo`,
    jhis.job_id,
    jb.job_title AS 'Cargo',
    dep.department_id,
    dep.department_name
FROM
    hr.employees AS emp
        INNER JOIN
    hr.job_history AS jhis ON emp.employee_id = jhis.employee_id
        INNER JOIN
    hr.jobs AS jb ON jb.job_ID = jhis.job_id
        INNER JOIN
    hr.departments AS dep ON jhis.department_id = dep.department_id
ORDER BY `Nome Completo` DESC;
