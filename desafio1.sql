SELECT COUNTRY_NAME AS País, 
IF (Region_ID = 1, 'incluído', 'não incluído') AS 'Status Inclusão' 
from hr.countries
Order BY 1;
