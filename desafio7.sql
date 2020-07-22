SELECT 
    emp.employee_id,
    UCASE(CONCAT(emp.first_name, ' ', emp.last_name)) AS `Nome Completo`,
    jhis.start_date,
    emp.salary
FROM
    hr.employees AS emp
        INNER JOIN
    hr.job_history AS jhis ON jhis.employee_id = emp.employee_id
WHERE
    MONTH(jhis.start_date) IN (1 , 2, 3)
ORDER BY `Nome Completo` ASC;
