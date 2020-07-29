DELIMITER $$
CREATE PROCEDURE exibir_historico_completo_por_funcionario(email varchar(50))
BEGIN
  SELECT CONCAT(emp.FIRST_NAME, ' ',emp.LAST_NAME) 'Nome completo',
(
SELECT dep.DEPARTMENT_NAME FROM hr.departments AS dep
WHERE dep.DEPARTMENT_ID = jobh.DEPARTMENT_ID
) AS Departamento,
jobs.JOB_TITLE "Cargo"
FROM hr.employees emp, hr.job_history jobh, hr.jobs jobs
WHERE jobh.EMPLOYEE_ID = emp.EMPLOYEE_ID AND emp.EMAIL = email AND jobs.JOB_ID = jobh.JOB_ID;
END $$
DELIMITER ;

CALL exibir_historico_completo_por_funcionario('NKOCHHAR');
