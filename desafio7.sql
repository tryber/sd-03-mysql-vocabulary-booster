SELECT CONCAT(em.FIRST_NAME, ' ', em.LAST_NAME)
  AS "Nome completo",
DATE_FORMAT(jh.START_DATE, '%Y-%m-%d')
  AS "Data de início",
em.SALARY
  AS "Salário"
FROM hr.job_history jh
INNER JOIN hr.employees em
  ON jh.EMPLOYEE_ID = em.EMPLOYEE_ID
WHERE MONTH(jh.START_DATE) = 1
  OR MONTH(jh.START_DATE) = 2
  OR MONTH(jh.START_DATE) = 3
ORDER BY 1 ASC, 2 ASC;
