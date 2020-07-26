USE hr;
DELIMITER $$

CREATE PROCEDURE exibir_historico_completo_por_funcionario(IN ORG_MAIL VARCHAR(70))
BEGIN
SELECT CONCAT(employees.FIRST_NAME, ' ', employees.LAST_NAME) AS `Nome completo`,
departments.department_name AS `Departamento`,
jobs.job_title AS 'Cargo'
from hr.employees AS employees
JOIN hr.job_history AS job_history ON job_history.employee_id = employees.employee_id
JOIN hr.departments AS departments ON job_history.department_id = departments.department_id
JOIN hr.jobs AS jobs ON job_history.job_id = jobs.job_id
WHERE employees.EMAIL = ORG_MAIL
ORDER BY `Departamento`, `Cargo`;
END $$

DELIMITER ;

CALL exibir_historico_completo_por_funcionario('NKOCHHAR');
