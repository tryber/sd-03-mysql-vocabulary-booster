SELECT
    UCASE(CONCAT(E.FIRST_NAME, ' ', E.LAST_NAME)) AS `Nome completo`,
    JH.START_DATE AS `Data de início`,
    E.SALARY AS Salário
FROM
    hr.job_history AS JH
        INNER JOIN
    hr.employees AS E
WHERE
    JH.EMPLOYEE_ID = E.EMPLOYEE_ID
        AND MONTH(JH.START_DATE) IN (01, 02, 03)
ORDER BY `Nome completo`, JH.START_DATE;
