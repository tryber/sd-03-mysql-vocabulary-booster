SELECT CONCAT(emp_um.FIRST_NAME, ' ',emp_um.LAST_NAME) `Nome completo funcionário 1`,
emp_um.SALARY `Salário funcionário 1`,
emp_um.PHONE_NUMBER `Telefone funcionário 1`,
CONCAT(emp_dois.FIRST_NAME, ' ',emp_dois.LAST_NAME) `Nome completo funcionário 2`,
emp_dois.SALARY `Salário funcionário 2`,
emp_dois.PHONE_NUMBER `Telefone funcionário 2`
FROM hr.employees emp_um
INNER JOIN hr.employees emp_dois ON emp_um.JOB_ID = emp_dois.JOB_ID AND emp_um.EMPLOYEE_ID <> emp_dois.EMPLOYEE_ID
ORDER BY `Nome completo funcionário 1`,
  `Nome completo funcionário 2`;