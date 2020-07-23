SELECT 
    UCASE(CONCAT(a.FIRST_NAME, ' ', a.LAST_NAME)) AS `Nome completo`,
    b.START_DATE AS `Data de início`,
    a.SALARY AS Salário
FROM
    hr.employees AS a
        INNER JOIN
    hr.job_history AS b
WHERE
    a.EMPLOYEE_ID = b.EMPLOYEE_ID
    AND MONTH(b.START_DATE) IN (01, 02, 03)
ORDER BY `Nome completo` ASC , b.START_DATE;
