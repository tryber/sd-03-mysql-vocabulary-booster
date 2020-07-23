-- 1. Foi decidido que vamos continuar atendendo apenas à região "Europe". Sendo assim, usando o banco hr como referência, 
-- precisamos de um relatório que deve apresentar duas colunas:

-- A primeira coluna deve possuir o alias "País" e exibir o nome do país.
-- A segunda coluna deve possuir o alias "Status Inclusão" e deve exibir "incluído" se o país em questão está incluso em "Europe", 
-- ou "não incluído", caso contrário.

-- Os resultados devem estar ordenados pelo nome do país em ordem alfabética.
SELECT COUNTRY_NAME as País, if(REGION_ID = 1, 'incluído', 'não incluído') as 'Status Inclusão'
FROM countries;
