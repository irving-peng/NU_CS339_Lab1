SELECT
    AVG(count) AS average_count,
    MIN(count) AS min_count,
    MAX(count) AS max_count
FROM (
    SELECT COUNT(t.id) AS count
    FROM data_officer O
    LEFT JOIN trr_trr T ON O.id = T.officer_id
    GROUP BY O.id
      ) AS OFFICER_COUNT