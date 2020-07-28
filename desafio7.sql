SELECT 
    Ucase(Concat(ES.first_name, ' ', ES.last_name)) AS 'Nome completo', 
    SD.start_date                                   AS 'Data de início', 
    ES.salary                                       AS 'Salário' 
FROM
    hr.employees AS ES, 
    hr.jobs AS JT, 
    hr.job_history AS SD 
WHERE
    ( SD.job_id = JT.job_id ) AND ( ES.employee_id = SD.employee_id ) AND Month(SD.start_date)IN ( '1', '2', '3' ) 
ORDER  BY 
    1, 2; 