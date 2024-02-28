SELECT
    instructor.id AS instructor_id,
    instructor.name AS instructor_name,
    COALESCE(SUM(CAST(ind_lesson.amount_of_lessons AS INTEGER)), 0) +
    COALESCE(SUM(CAST(group_lesson.amount_of_lessons AS INTEGER)), 0) AS total_lessons
FROM
    instructor
LEFT JOIN (
    SELECT
        i.id AS instructor_id,
        COUNT(ii.individual_id) AS amount_of_lessons
    FROM
        instructor i
    JOIN
        instructor_individual ii ON i.id = ii.instructor_id
    JOIN
        individual ind ON ii.individual_id = ind.id
    WHERE
        ind.date BETWEEN '2023-01-01' AND '2023-01-31'
    GROUP BY
        i.id
) AS ind_lesson ON instructor.id = ind_lesson.instructor_id
LEFT JOIN (
    SELECT
        i.id AS instructor_id,
        COUNT(g.group_id) AS amount_of_lessons
    FROM
        instructor i
    JOIN
        instructor_groupl g ON i.id = g.instructor_id
    JOIN
        groupl gr ON g.group_id = gr.id
    WHERE
        gr.date BETWEEN '2023-01-01' AND '2023-01-31'
    GROUP BY
        i.id
) AS group_lesson ON instructor.id = group_lesson.instructor_id
WHERE
    COALESCE(ind_lesson.amount_of_lessons, 0) + COALESCE(group_lesson.amount_of_lessons, 0) > 0
GROUP BY
    instructor.id, instructor.name
ORDER BY
    total_lessons DESC;
