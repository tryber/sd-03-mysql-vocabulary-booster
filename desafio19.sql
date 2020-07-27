USE hr;
DELIMITER $$
CREATE PROCEDURE exibir_historico_completo_por_funcionario(IN email VARCHAR(50))
BEGIN 
SELECT CONCAT(employees.FIRST_NAME,' ',employees.LAST_NAME) AS 'Nome completo',
departments.DEPARTMENT_NAME AS `Departamento`,
jobs.JOB_TITLE AS `Cargo`
FROM hr.employees
JOIN hr.job_history
ON job_history.EMPLOYEE_ID = employees.EMPLOYEE_ID
JOIN hr.departments
ON job_history.DEPARTMENT_ID = departments.DEPARTMENT_ID
JOIN hr.jobs 
ON job_history.JOB_ID = jobs.JOB_ID
WHERE employees.EMAIL = email
ORDER BY 2, 3;
END $$
DELIMITER ;
