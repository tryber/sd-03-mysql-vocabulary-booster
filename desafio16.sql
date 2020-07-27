USE hr;
DELIMITER $$
CREATE FUNCTION buscar_quantidade_de_empregos_por_funcionario(email varchar(50))
RETURNS INT READS SQL DATA
BEGIN
DECLARE id int;
DECLARE quantidade int;
SELECT 
    employees.EMPLOYEE_ID
FROM
    hr.employees
WHERE
    employees.EMAIL = email INTO id;
SELECT 
    COUNT(*)
FROM
    hr.job_history
WHERE
    job_history.EMPLOYEE_ID = id INTO quantidade;
RETURN quantidade;
END $$
DELIMITER ;
