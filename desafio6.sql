SELECT CONCAT(first_name, ' ', last_name) AS 'Nome completo',
    (SELECT job_title
    FROM hr.jobs AS job
    WHERE emp.job_id = job_id) AS Cargo,
    hire_date AS 'Data de início do cargo',
    (SELECT DEPARTMENT_NAME
    FROM hr.departments
    WHERE emp.department_id LIKE department_id) AS 'Departamento'
FROM hr.employees AS emp
GROUP BY first_name, last_name
ORDER BY CONCAT(first_name, ' ', last_name) DESC, (SELECT job_title
FROM hr.jobs AS job
WHERE emp.job_id = job_id);

