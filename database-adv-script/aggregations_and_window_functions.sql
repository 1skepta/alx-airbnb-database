-- Total number of bookings made by each user
SELECT
    user_id,
    COUNT(*) AS total_bookings
FROM
    bookings
GROUP BY
    user_id;

-- Rank properties based on the total number of bookings
WITH property_bookings AS (
    SELECT
        property_id,
        COUNT(*) AS total_property_bookings
    FROM
        bookings
    GROUP BY
        property_id
)
SELECT
    property_id,
    total_property_bookings,
    RANK() OVER (ORDER BY total_property_bookings DESC) AS property_rank
FROM
    property_bookings;
["ROW_NUMBER()"]