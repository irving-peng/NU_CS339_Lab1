SELECT DATE_PART('year', OA.end_date) AS year,OA.final_finding, COUNT(*) AS allegation_count
FROM data_officerallegation OA
WHERE OA.final_finding IN ('SU', 'EX') AND OA.end_date IS NOT NULL
GROUP BY DATE_PART('year', OA.end_date), OA.final_finding
ORDER BY year