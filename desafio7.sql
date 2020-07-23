SELECT 
    UCASE(CONCAT(a.FIRST_NAME, ' ', a.LAST_NAME)) AS `Nome completo`,
    b.START_DATE AS `Data de início do cargo`,
    a.SALARY AS Salário
FROM
    hr.employees AS a
        INNER JOIN
    hr.job_history AS b
WHERE
    a.EMPLOYEE_ID = b.EMPLOYEE_ID
    AND a.SALARY > 7000.00
    AND a.FIRST_NAME <> 'Neena'
ORDER BY `Nome completo` ASC , b.START_DATE;
