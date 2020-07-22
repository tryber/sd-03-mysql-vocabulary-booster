DELIMITER $$ CREATE PROCEDURE buscar_media_por_cargo(IN cargo VARCHAR(100)) BEGINSELECT ROUND(AVG(salary),
          2) AS `Média salarial`
FROM hr.employees
WHERE JOB_ID = 
    (SELECT JOB_ID
    FROM hr.jobs
    WHERE JOB_TITLE = cargo);
    END $$ DELIMITER ;
