SELECT AC.category, AC.allegation_name, COUNT(*) AS complaint_count
FROM data_complainant C
JOIN data_allegation A on C.allegation_id = A.crid
JOIN data_officerallegation OA on OA.allegation_id = A.crid
JOIN data_allegationcategory AC on AC.id = OA.allegation_category_id
WHERE A.is_officer_complaint = false
GROUP BY (AC.category, AC.allegation_name)
ORDER BY complaint_count DESC
LIMIT 5