SELECT 
    CONCAT(B.FIRST_NAME, ' ', B.LAST_NAME) AS `Nome completo`,
    DATE_FORMAT(A.START_DATE, '%d/%m/%Y') AS 'Data de início',
    DATE_FORMAT(A.END_DATE, '%d/%m/%Y') AS 'Data de rescisão',
    ROUND(DATEDIFF(A.END_DATE, A.START_DATE) / 365,
            2) AS `Anos trabalhados`
FROM
    hr.job_history AS A
        JOIN
    hr.employees AS B ON A.EMPLOYEE_ID = B.EMPLOYEE_ID
WHERE
    A.EMPLOYEE_ID <> 0
ORDER BY `Nome completo` , `Anos trabalhados`;
