USE hr;
DELIMITER $$
CREATE PROCEDURE buscar_quantidade_de_empregos_por_funcionario(IN inputEmail VARCHAR(50)) 
BEGIN
    SELECT COUNT(job_id) FROM hr.employees
    WHERE job_id LIKE (
        SELECT job_id FROM hr.employees WHERE email LIKE inputEmail) 
END $$
DELIMITER;
