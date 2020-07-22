SELECT
	country.COUNTRY_NAME AS País,
  IF (
		country.REGION_ID = (SELECT reg.REGION_ID FROM hr.regions AS reg WHERE reg.REGION_NAME = "Europe"),
        "incluído",
        "não incluso"
	) AS "Status Inclusão"
FROM hr.countries AS country;
