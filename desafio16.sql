DELIMITER $$
CREATE FUNCTION buscar_quantidade_de_empregos_por_funcionario(email VARCHAR(300))
RETURNS TINYINT READS SQL DATA
BEGIN
  DECLARE jobs_num TINYINT;
  SELECT COUNT(history.EMPLOYEE_ID) AS total_empregos
  FROM hr.employees AS employees
  INNER JOIN hr.job_history AS history
  ON history.EMPLOYEE_ID = employees.EMPLOYEE_ID
  WHERE employees.EMAIL = email
  INTO jobs_num;
  RETURN jobs_num;
END $$
DELIMITER ;

SELECT buscar_quantidade_de_empregos_por_funcionario("NKOCHHAR") AS total_empregos;
