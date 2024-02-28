SELECT
    sibling_count,
    COUNT(DISTINCT student_id) AS student_count
FROM (
    SELECT
        s1.id AS student_id,
        COUNT(DISTINCT s2.id) AS sibling_count
    FROM
        student s1
    LEFT JOIN
        student s2 ON s1.sibling_id = s2.sibling_id AND s1.id <> s2.id
    GROUP BY
        s1.id
) AS SiblingCounts
GROUP BY
    sibling_count
ORDER BY
    sibling_count;
