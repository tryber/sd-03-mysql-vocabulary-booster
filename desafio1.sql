SELECT COUNTRY_NAME AS 'País',
  IF(
    REGION_ID = (
      SELECT region_id
      FROM hr.regions
      WHERE region_name = 'Europe'
    ),
    'incluído',
    'não incluído'
  ) AS `Status Inclusão`
FROM hr.countries
ORDER BY COUNTRY_NAME;
