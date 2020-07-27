SELECT CONCAT(CN.FIRST_NAME,' ', CN.LAST_NAME) AS 'Nome completo',
FT.JOB_TITLE AS Cargo,
FS.START_DATE AS 'Data de início do cargo',
DT.DEPARTMENT_NAME AS 'Departamento'
FROM hr.employees AS CN, hr.jobs AS FT, hr.departments AS DT, hr.job_history AS FS
WHERE (FS.JOB_ID = FT.JOB_ID) AND (FS.DEPARTMENT_ID = DT.DEPARTMENT_ID) AND (FS.EMPLOYEE_ID = CN.EMPLOYEE_ID)
ORDER BY 1, 2;
