DELIMITER $$
CREATE PROCEDURE exibir_historico_completo_por_funcionario(IN email VARCHAR(50))
BEGIN
  SELECT
  CONCAT(emp.FIRST_NAME, ' ', emp.LAST_NAME) AS "Nome completo",
  (
    SELECT dep.DEPARTMENT_NAME FROM hr.departments AS dep
    WHERE dep.DEPARTMENT_ID = jh.DEPARTMENT_ID
  ) AS Departamento,
  (SELECT j.JOB_TITLE FROM hr.jobs AS j WHERE j.JOB_ID = jh.JOB_ID) AS Cargo
  FROM hr.employees AS emp
  INNER JOIN hr.job_history AS jh
  ON jh.EMPLOYEE_ID = emp.EMPLOYEE_ID
  WHERE emp.EMAIL = email
  ORDER BY Departamento, Cargo;
END $$
DELIMITER ;

CALL exibir_historico_completo_por_funcionario('NKOCHHAR');
