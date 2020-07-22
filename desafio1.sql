SELECT COUNTRY_NAME AS Pais,
        
    CASE
    WHEN REGION_ID = 1 THEN
    'incluído'
    ELSE 'Não incluido'
    END AS 'Status Inclusão'
FROM hr.countries; 
