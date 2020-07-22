SELECT COUNTRY_NAME AS País, f.* FROM hr.countries
INNER JOIN
(
SELECT IF(REGION_ID = 1, 'incluído', 'não incluído') as 'Status Inclusão'
FROM hr.regions
) AS f
ORDER BY COUNTRY_NAME;
