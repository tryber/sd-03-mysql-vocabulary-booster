SELECT 
    EMPLOYEE_ID,
    CONCAT(DAY(START_DATE),
            '/',
            MONTH(START_DATE),
            '/',
            YEAR(START_DATE)) 'Data de Início',
    CONCAT(DAY(END_DATE),
            '/',
            MONTH(END_DATE),
            '/',
            YEAR(END_DATE)) 'Data da Rescisão',
    ROUND(DATEDIFF(END_DATE, START_DATE) / 365, 2)
FROM
    hr.job_history
ORDER BY EMPLOYEE_ID;
