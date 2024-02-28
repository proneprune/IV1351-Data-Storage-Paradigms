SELECT
    month,
    COUNT(id) AS total_lessons,
    COUNT(CASE WHEN lesson_type = 'individual' THEN id END) AS individual_lessons,
    COUNT(CASE WHEN lesson_type = 'group' THEN id END) AS group_lessons,
    COUNT(CASE WHEN lesson_type = 'ensemble' THEN id END) AS ensemble_lessons
FROM (
    SELECT
        id,
        date,
        TO_CHAR(DATE_TRUNC('month', date), 'Mon YYYY') AS month,
        'individual' AS lesson_type
    FROM
        individual
    WHERE
        EXTRACT(YEAR FROM date) = 2023

    UNION ALL

    SELECT
        id,
        date,
        TO_CHAR(DATE_TRUNC('month', date), 'Mon YYYY') AS month,
        'group' AS lesson_type
    FROM
        groupl
    WHERE
        EXTRACT(YEAR FROM date) = 2023

    UNION ALL

    SELECT
        id,
        date,
        TO_CHAR(DATE_TRUNC('month', date), 'Mon YYYY') AS month,
        'ensemble' AS lesson_type
    FROM
        ensemble
    WHERE
        EXTRACT(YEAR FROM date) = 2023
) AS all_lessons
GROUP BY
    month
ORDER BY
    MIN(DATE_TRUNC('month', date));
