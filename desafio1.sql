SELECT c.COUNTRY_NAME AS 'País', IF(r.REGION_NAME = 'Europe', 'incluído', 'não incluído') AS 'Status Inclusão'
FROM hr.countries as c
JOIN hr.regions as r
ON c.REGION_ID = r.REGION_ID
ORDER BY `País`;
