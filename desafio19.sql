USE hr;
DELIMITER $$
CREATE PROCEDURE exibir_historico_completo_por_funcionario(
IN email_to VARCHAR(255)
)
BEGIN
SELECT 
concat(FIRST_NAME, " ", LAST_NAME) AS "Nome completo",
DEPARTMENT_NAME as "Departamento",
JOB_TITLE as "Cargo"
FROM hr.job_history as jb
inner join hr.employees as e
on e.EMPLOYEE_ID = jb.EMPLOYEE_ID
inner join hr.departments as d
on d.DEPARTMENT_ID = jb.DEPARTMENT_ID
inner join hr.jobs as j
on j.JOB_ID = jb.JOB_ID
WHERE EMAIL = email_to
ORDER BY Departamento,Cargo;
END $$

DELIMITER ;
