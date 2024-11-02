SELECT O.rank, MAX(O.sustained_count) AS max_sustained_count
FROM data_officer O
GROUP BY O.rank
ORDER BY max_sustained_count DESC;