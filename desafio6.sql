SELECT CONCAT(em.FIRST_NAME, ' ', em.LAST_NAME) `Nome completo`,
jb.JOB_TITLE `Cargo`,
jh.START_DATE 'Data de início do cargo',
dp.DEPARTMENT_NAME 'Departamento'
FROM hr.job_history AS jh
INNER JOIN hr.employees AS em ON jh.EMPLOYEE_ID = em.EMPLOYEE_ID
INNER JOIN hr.jobs AS jb ON jh.JOB_ID = jb.JOB_ID
INNER JOIN hr.departments AS dp ON jh.DEPARTMENT_ID = dp.DEPARTMENT_ID
ORDER BY `Nome completo` DESC, `Cargo`;
