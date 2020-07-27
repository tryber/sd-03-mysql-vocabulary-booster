USE hr;

DELIMITER $$

CREATE PROCEDURE buscar_media_por_cargo(IN cargo VARCHAR(20))
BEGIN 
SELECT ROUND(AVG(ES.SALARY), 2) AS 'Média salarial' FROM hr.jobs AS JS
JOIN hr.employees AS ES
ON JS.JOB_ID = ES.JOB_ID AND JS.JOB_TITLE = cargo
GROUP BY JS.JOB_TITLE
ORDER BY ROUND(AVG(ES.SALARY), 2), JS.JOB_TITLE;
END;

$$ DELIMITER ;
