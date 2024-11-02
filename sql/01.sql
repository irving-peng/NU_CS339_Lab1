SELECT O.first_name, O.middle_initial, O.last_name
FROM data_officer O
WHERE O.appointed_date >= '2020-03-15'
ORDER BY O.last_name, O.first_name;