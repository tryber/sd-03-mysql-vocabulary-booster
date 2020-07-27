SELECT 
    CONCAT(employees.FIRST_NAME, ' ', employees.LAST_NAME) AS `Nome completo`,
    DATE_FORMAT(HT.START_DATE, '%d/%m/%Y') AS 'Data de início',
    DATE_FORMAT(HT.END_DATE, '%d/%m/%Y') AS 'Data de rescisão',
    ROUND(DATEDIFF(HT.END_DATE, HT.START_DATE) / 365,
      2) AS `Anos trabalhados`
FROM
    hr.employees AS employees INNER JOIN hr.job_history AS HT ON employees.EMPLOYEE_ID = HT.EMPLOYEE_ID
ORDER BY 1, 4;
