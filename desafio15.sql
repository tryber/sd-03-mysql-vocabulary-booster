USE hr;
DELIMITER $$
CREATE PROCEDURE buscar_media_por_cargo(IN cargo VARCHAR(25)) 
BEGIN
    SELECT AVG(salary) FROM hr.employees
    WHERE job_id = (
        SELECT job_id FROM hr.jobs WHERE job_title LIKE cargo);
END $$
DELIMITER;
