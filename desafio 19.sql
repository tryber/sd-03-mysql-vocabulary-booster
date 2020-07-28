DELIMITER $$
CREATE PROCEDURE exibir_historico_completo_por_funcionario(IN email_entrie VARCHAR(50))
BEGIN
SELECT CONCAT(A.FIRST_NAME, " ", A.LAST_NAME) AS "Nome completo",
C.DEPARTMENT_NAME AS Departamento,
D.JOB_TITLE AS Cargo
FROM hr.employees AS A
JOIN hr.job_history AS B
ON A.EMPLOYEE_ID = B.EMPLOYEE_ID
JOIN hr.departments AS C
ON B.DEPARTMENT_ID = C.DEPARTMENT_ID
JOIN hr.jobs AS D
ON B.JOB_ID = D.JOB_ID
WHERE A.EMAIL = email_entrie
ORDER BY Departamento, Cargo;
END $$
DELIMITER ;

CALL exibir_historico_completo_por_funcionario("NKOCHHAR");
