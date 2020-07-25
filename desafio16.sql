USE hr;

DELIMITER $$

CREATE PROCEDURE buscar_quantidade_de_empregos_por_funcionario(MAIL VARCHAR(50))

BEGIN

SELECT
    COUNT(EMPLOYEE_ID)
FROM
    hr.job_history
WHERE
    EMPLOYEE_ID = (SELECT
            EMPLOYEE_ID
        FROM
            hr.employees
        WHERE
            EMAIL = MAIL)
GROUP BY EMPLOYEE_ID;

END $$

DELIMITER ;
