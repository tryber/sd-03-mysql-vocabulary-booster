SELECT 
    country_name,
    IF(region_id = 1,
        'incluído',
        'não incluído') AS 'Status de Inclusão'
FROM
    hr.countries
LIMIT 25;
