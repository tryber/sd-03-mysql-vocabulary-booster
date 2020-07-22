SELECT CONCAT(E.FIRST_NAME,' ', E.LAST_NAME) AS 'Nome completo',
J.JOB_TITLE AS Cargo,
E.HIRE_DATE AS 'Data de início do cargo',
D.DEPARTMENT_NAME AS 'Departamento'
FROM hr.employees AS E, hr.jobs AS J, hr.departments AS D
WHERE (E.JOB_ID = J.JOB_ID) AND (E.DEPARTMENT_ID = D.DEPARTMENT_ID)
ORDER BY CONCAT(E.FIRST_NAME,' ', E.LAST_NAME) DESC, Cargo ASC;
