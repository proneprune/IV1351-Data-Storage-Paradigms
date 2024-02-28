SELECT
    CASE EXTRACT(DOW FROM e.date)
        WHEN 0 THEN 'Mon'
        WHEN 1 THEN 'Tue'
        WHEN 2 THEN 'Wed'
        WHEN 3 THEN 'Thur'
        WHEN 4 THEN 'Fri'
        WHEN 5 THEN 'Sat'
        WHEN 6 THEN 'Sun'
        ELSE 'Unknown'
    END AS day_of_week,
    e.genre,
    CASE
        WHEN (CAST(e.maximum_amount_of_students AS INT) - COALESCE(CAST(e.current_amount_of_students AS INT), 0)) = 0 THEN 'no seats'
        WHEN (CAST(e.maximum_amount_of_students AS INT) - COALESCE(CAST(e.current_amount_of_students AS INT), 0)) <= 2 THEN '1-2 seats'
        ELSE 'many seats'
    END AS seat_availability
FROM
    ensemble e
LEFT JOIN
    student_ensemble se ON e.id = se.ensemble_id
WHERE
    e.date BETWEEN '2023-01-23' AND '2023-01-29'
ORDER BY
    EXTRACT(DOW FROM e.date), e.genre;
