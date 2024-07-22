SELECT
    IFNULL(
        (
        SELECT
            num
        FROM
            MyNumbers
        GROUP BY
            num
        HAVING
            COUNT(*) = 1
        ORDER BY num desc limit 1
        ), null
    ) as num
