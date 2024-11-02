SELECT O.id, O.first_name, O.last_name
FROM data_officer O
JOIN (SELECT OA.officer_id,COUNT(DISTINCT A.crid) AS complaint_count
FROM data_officer O
JOIN data_officerallegation OA ON OA.officer_id = O.id
JOIN data_allegation A ON A.crid = OA.allegation_id
GROUP BY OA.officer_id
HAVING COUNT(DISTINCT A.crid) >= 3) O_COMPLAINT ON O_COMPLAINT.officer_id = O.id
ORDER BY O.id
