USE hr;
DELIMITER $$

CREATE PROCEDURE ExibirHistoricoCompletoPorFuncionario(IN emp_id INT)
BEGIN
  SELECT
    jh.employee_id,
    CONCAT(e.first_name, ' ', e.last_name) as `Nome Completo`,
    j.JOB_TITLE Cargo,
    d.DEPARTMENT_NAME Departamento
  FROM hr.job_history jh
  INNER JOIN hr.employees e ON jh.EMPLOYEE_ID = e.EMPLOYEE_ID
  INNER JOIN hr.jobs j ON j.JOB_ID = jh.JOB_ID
  INNER JOIN hr.departments d ON d.DEPARTMENT_ID = jh.DEPARTMENT_ID
  WHERE jh.employee_id = emp_id;
END $$

DELIMITER ;

CALL ExibirHistoricoCompletoPorFuncionario(101);
