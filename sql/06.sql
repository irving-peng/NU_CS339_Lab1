SELECT
    LEAST(OA1.officer_id, OA2.officer_id) AS officer1_id,
    O1.last_unit_id AS officer1_unit,
    GREATEST(OA1.officer_id, OA2.officer_id) AS officer2_id,
    O2.last_unit_id AS officer2_unit
FROM data_officerallegation OA1
JOIN data_officerallegation OA2 ON OA2.allegation_id = OA1.allegation_id
JOIN data_officer O1 ON O1.id = OA1.officer_id
JOIN data_officer O2 ON O2.id = OA2.officer_id
WHERE O1.last_unit_id != O2.last_unit_id AND OA1.officer_id < OA2.officer_id
ORDER BY officer1_id, officer2_id;