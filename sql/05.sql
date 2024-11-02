SELECT DISTINCT PU.unit_name AS unit_name,
                  (COUNT(OH.officer_id) * 1.0 / POPULATION.total_population *10000) AS officers_per_capita
FROM(SELECT  A.id, CAST(LEFT(A.name, -2) AS INT) AS integer_value
FROM data_area A
WHERE A.area_type = 'police-districts'
ORDER BY A.name) NEW_TABLE
JOIN data_policeunit PU ON NEW_TABLE.integer_value = CAST(PU.unit_name AS INT)
JOIN (SELECT R.area_id, SUM(R.count) as total_population
FROM data_racepopulation R
JOIN data_area A ON A.id = R.area_id
GROUP BY R.area_id) AS POPULATION ON POPULATION.area_id = NEW_TABLE.id
JOIN data_officerhistory OH on PU.id = OH.unit_id
JOIN data_officer O ON O.id = OH.officer_id
WHERE O.active = 'Yes'
GROUP BY PU.unit_name, POPULATION.total_population
ORDER BY officers_per_capita DESC



