SELECT
    Concat(CN.first_name, ' ', CN.last_name) AS 'Nome completo',
    FT.job_title AS Cargo,
    FS.start_date AS 'Data de início do cargo',
    DT.department_name AS 'Departamento' 
FROM
    hr.employees AS CN,
    hr.jobs AS FT,
    hr.departments AS DT,
    hr.job_history AS FS 
WHERE
    (FS.job_id = FT.job_id ) AND (FS.department_id = DT.department_id) AND (FS.employee_id = CN.employee_id)
ORDER BY
    `nome completo` DESC,2;
