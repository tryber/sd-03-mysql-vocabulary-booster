DELIMITER $$
CREATE PROCEDURE exibir_historico_completo_por_funcionario(email varchar(50))
BEGIN
SELECT CONCAT(emp.FIRST_NAME, ' ',emp.LAST_NAME) 'Nome completo',
deps.DEPARTMENT_NAME "Departamento",
jobs.JOB_TITLE "Cargo"
FROM hr.employees emp, hr.job_history jobh, hr.jobs jobs, hr.departments deps
WHERE jobh.EMPLOYEE_ID = emp.EMPLOYEE_ID
AND emp.EMAIL = email
AND jobs.JOB_ID = jobh.JOB_ID
AND deps.DEPARTMENT_ID = deps.DEPARTMENT_ID
ORDER BY Departamento, Cargo;
END $$
DELIMITER ;

CALL exibir_historico_completo_por_funcionario('NKOCHHAR');
