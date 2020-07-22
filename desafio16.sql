USE hr;
DELIMITER $$

CREATE FUNCTION BuscarQuantidadeDeEmpregosPorFuncionario(func_id int)
RETURNS INT READS SQL DATA 
BEGIN 
DECLARE n_total_jobs INT;
    SELECT COUNT(EMPLOYEE_ID) FROM hr.job_history
    GROUP BY EMPLOYEE_ID HAVING EMPLOYEE_ID = func_id INTO n_total_jobs;
RETURN n_total_jobs;
END $$

DELIMITER ;

SELECT BuscarQuantidadeDeEmpregosPorFuncionario(101);
