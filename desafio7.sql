SELECT 
    UCASE(CONCAT(E.FIRST_NAME, ' ', E.LAST_NAME)) AS `Nome completo`,
    H.START_DATE AS `Data de início`,
    E.SALARY AS Salário
FROM
    hr.employees AS E
        INNER JOIN
    hr.job_history AS H
WHERE
    E.EMPLOYEE_ID = H.EMPLOYEE_ID
        AND MONTH(H.START_DATE) IN (01 , 02, 03)
ORDER BY `Nome completo` ASC , H.START_DATE;
