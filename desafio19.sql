USE hr;

DELIMITER $$

CREATE PROCEDURE exibir_historico_completo_por_funcionario(IN proce_email VARCHAR(35))
BEGIN 
SELECT CONCAT(CN.FIRST_NAME,' ',CN.LAST_NAME) AS 'Nome completo', DEPT.DEPARTMENT_NAME AS `Departamento`, JT.JOB_TITLE AS `Cargo`
FROM hr.employees AS CN
JOIN hr.job_history AS JH
ON JH.EMPLOYEE_ID = CN.EMPLOYEE_ID
JOIN hr.departments AS DEPT 
ON JH.DEPARTMENT_ID = DEPT.DEPARTMENT_ID
JOIN hr.jobs AS JT 
ON JH.JOB_ID = JT.JOB_ID
WHERE CN.EMAIL = proce_email ORDER BY `Departamento`, `Cargo`;
END;

$$ DELIMITER ;
