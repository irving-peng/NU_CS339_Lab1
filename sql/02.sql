SELECT
    (CAST(SUM(CASE WHEN A.is_officer_complaint = true THEN 1 ELSE 0 END) AS FLOAT) /
     CAST(COUNT(*) AS FLOAT)) * 100 AS percentage
FROM data_allegation A
