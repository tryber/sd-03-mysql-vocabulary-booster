USE hr;
DELIMITER $$

CREATE PROCEDURE BuscarMediaPorCategoriaDeTrabalho(IN jobID VARCHAR(100))
BEGIN
SELECT ROUND(AVG(SALARY), 2) AS `media` FROM hr.employees
    GROUP BY job_id
    HAVING job_id = jobID;
END $$ 

DELIMITER ;

CALL BuscarMediaPorCategoriaDeTrabalho('IT_PROG');
