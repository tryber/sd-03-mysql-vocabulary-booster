SELECT
    CONCAT(CN1.FIRST_NAME, ' ', CN1.LAST_NAME) AS 'Nome completo funcionário 1',
    CN1.SALARY AS 'Salário funcionário 1',
    CN1.PHONE_NUMBER AS 'Telefone funcionário 1',
    CONCAT(CN2.FIRST_NAME, ' ', CN2.LAST_NAME) AS 'Nome completo funcionário 2',
    CN2.SALARY AS 'Salário funcionário 2',
    CN2.PHONE_NUMBER AS 'Telefone funcionário 2'
FROM
    hr.employees AS CN1,
    hr.employees AS CN2
WHERE
    (CN1.JOB_ID = CN2.JOB_ID) AND
    (CONCAT(CN1.FIRST_NAME, ' ', CN1.LAST_NAME) <> CONCAT(CN2.FIRST_NAME, ' ', CN2.LAST_NAME))
ORDER BY
    1, 4;
