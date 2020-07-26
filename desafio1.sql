SELECT country_name AS Pais,
IF(region_id = 1, 'incluido', 'não incluido') AS Status_Inclusao
FROM hr.countries;
