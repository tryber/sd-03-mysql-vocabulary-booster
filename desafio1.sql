SELECT COUNTRY_NAME AS País, 
IF(REGION_ID = (SELECT REGION_ID
FROM hr.regions
WHERE REGION_ID = 1),
'incluído', 'não incluído') as 'Status Inclusão' FROM hr.countries
ORDER BY COUNTRY_NAME;
