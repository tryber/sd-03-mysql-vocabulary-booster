SELECT
    (SELECT
            CONCAT(FIRST_NAME, ' ', LAST_NAME)
        FROM
            hr.employees
        WHERE
            employees.EMPLOYEE_ID = job_history.EMPLOYEE_ID) AS `Nome completo`,
        START_DATE AS `Data de início`,
        END_DATE AS `Data de rescisão`,
        ROUND((END_DATE - START_DATE) / 8760, 2) AS `Anos trabalhados`
FROM
    hr.job_history;
