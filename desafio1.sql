SELECT country_name AS País, (
SELECT IF(region_id = 1, 'incluído', 'não incluído')
FROM hr.regions
WHERE regions.region_id = countries.region_id
) AS 'Status Inclusão'
FROM hr.countries
ORDER BY countries.country_name;