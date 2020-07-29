delimiter $$
CREATE FUNCTION buscar_quantidade_de_empregos_por_funcionario(val VARCHAR(30))
RETURNS INT READS SQL DATA
BEGIN
DECLARE jobs INT;
SELECT avjbcounted FROM (SELECT count(*) avjbcounted, 
(SELECT email FROM hr.employees lala WHERE lala.employee_id = job_history.employee_id) email
FROM hr.job_history
GROUP BY employee_id
HAVING employee_id <> 0) t
WHERE email = val INTO jobs;
RETURN jobs;
END$$
delimiter ;
