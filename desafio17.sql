SELECT 
    (SELECT 
            CONCAT(first_name, ' ', last_name)
        FROM
            hr.employees
        WHERE
            employees.employee_id = job_history.employee_id) AS 'Nome completo',
    CONCAT(DAY(start_date),
            '/',
            MONTH(start_date),
            '/',
            YEAR(start_date)) AS 'Data de início',
    CONCAT(DAY(end_date),
            '/',
            MONTH(end_date),
            '/',
            YEAR(end_date)) AS 'Data de rescisão',
    ROUND((end_date - start_date) / 8760, 2) AS 'Anos trabalhados'
FROM
    hr.job_history
WHERE
    employee_id <> 0
ORDER BY `Nome completo` , `Anos trabalhados`;
