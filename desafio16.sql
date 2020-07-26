USE hr;
DELIMITER $$

CREATE FUNCTION buscar_quantidade_de_empregos_por_funcionario(email VARCHAR(100))
RETURNS INT READS SQL DATA
BEGIN
  DECLARE totalJobs INT;
  SELECT COUNT(jh.EMPLOYEE_ID)
  FROM hr.employees emp
  INNER JOIN hr.job_history jh
  ON emp.EMPLOYEE_ID = jh.EMPLOYEE_ID
  WHERE emp.email = email
  INTO totalJobs;
  RETURN totalJobs;
END $$

DELIMETER ;

SELECT buscar_quantidade_de_empregos_por_funcionario('NKOCHHAR');
