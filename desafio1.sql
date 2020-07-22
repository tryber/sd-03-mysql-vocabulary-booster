SELECT COUNTRY_NAME AS Pais,
        
    CASE
    WHEN REGION_ID <> 1 THEN
    'não incluído'
    ELSE 'incluido'
    END AS 'Status Inclusão'
FROM hr.countries; 
