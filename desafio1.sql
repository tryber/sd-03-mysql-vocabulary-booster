SELECT countries.COUNTRY_NAME AS País, (
    CASE 
        WHEN region_id = '1' THEN 'incluído'
        WHEN region_id <> '1' THEN 'não incluído'
    END) AS  'Status Inclusão' FROM hr.countries;    
    