USE hr;
DELIMITER $$

CREATE PROCEDURE exibir_historico_completo_por_funcionario(
IN email VARCHAR(25)
)
BEGIN
SELECT CONCAT(em.FIRST_NAME, ' ', em.LAST_NAME) `Nome completo`,
dp.DEPARTMENT_NAME `Departamento`,
jb.JOB_TITLE `Cargo`
FROM hr.job_history jh
INNER JOIN hr.employees em ON jh.EMPLOYEE_ID = em.EMPLOYEE_ID
INNER JOIN hr.departments dp ON jh.DEPARTMENT_ID = dp.DEPARTMENT_ID
INNER JOIN hr.jobs jb ON jh.JOB_ID = jb.JOB_ID
WHERE em.EMAIL = email
ORDER BY `Cargo`;
END $$

DELIMITER ;

CALL exibir_historico_completo_por_funcionario('NKOCHHAR');
