SELECT country_name AS 'País',
    IF(REGION_ID = 1, 'incluído','não incluído') AS "Status de Inclusão"
FROM hr.countries
ORDER BY country_name;
 