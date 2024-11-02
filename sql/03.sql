SELECT O.first_name,O.middle_initial, O.last_name
FROM data_officer O
WHERE O.appointed_date = (SELECT MAX(O.appointed_date) FROM data_officer O)
ORDER BY O.id