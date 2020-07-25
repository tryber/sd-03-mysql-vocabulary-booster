SELECT
    UCASE(CONCAT(employee.first_name, ' ', employee.last_name)) AS 'Nome Completo',
    history.start_date AS 'Data de início',
    employee.salary AS 'Salário'
FROM hr.employees employee
    INNER JOIN hr.job_history AS history
    ON MONTH (history.start_date)IN (1,2,3) AND employee.employee_id = history.employee_id
ORDER BY `Nome Completo`, history.start_date;
