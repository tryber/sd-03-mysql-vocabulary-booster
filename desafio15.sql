USE hr;
DELIMITER $$

CREATE PROCEDURE buscar_media_por_cargo(IN JOB VARCHAR(100))
BEGIN
SELECT round(avg(e.salary),2) as 'Média salarial' FROM hr.employees as e
inner join hr.jobs as j on j.job_id=e.job_id 
where j.job_title=JOB
group by e.job_id;
END $$

DELIMITER ;
