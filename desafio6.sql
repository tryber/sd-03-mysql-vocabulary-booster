/* SELECT SELECT CONCAT(first_name, ' ', last_name) AS 'Nome completo',
    (
        SELECT job_title
        FROM hr.jobs AS job
        WHERE emp.job_id = job_id
    ) AS Cargo,
    hire_date AS 'Data de início do cargo',
    (
        SELECT DEPARTMENT_NAME
        FROM hr.departments
        WHERE emp.department_id LIKE department_id
    ) AS 'Departamento'
FROM hr.employees AS emp
ORDER BY `Nome completo` DESC, Cargo; 
 */
SELECT (
     SELECT
        CONCAT(first_name, ' ', last_name)
    FROM hr.employees employee
    WHERE employee.employee_id = history.employee_id
  )
    AS 'Nome completo',
    (
        SELECT job_title
    FROM hr.jobs AS job
    WHERE history.job_id = job.job_id
    )AS Cargo,
    (
        SELECT DEPARTMENT_NAME
    FROM hr.departments dep
    WHERE history.department_id LIKE dep.department_id
    ) AS 'Departamento'

FROM hr.job_history history
WHERE  history.employee_id <> 0
ORDER BY `Nome completo` DESC, Cargo;
