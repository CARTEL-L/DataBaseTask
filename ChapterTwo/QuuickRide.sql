-- request 1 --

SELECT TRIP_ID, FARE, RIDER_NAME
FROM quickride.trips
WHERE CITY = 'Lagos';

-- request 2-- 

SELECT rider_name, city, fare
FROM trips
ORDER BY fare DESC LIMIT 5;

-- Question Three

SELECT DISTINCT city
FROM trips;

-- Question Four

SELECT *
FROM quickride.trips
WHERE payment_method = 'Card' and fare > 5000; 

-- Question Five

SELECT *
FROM trips
WHERE distance_km BETWEEN 5 AND 10;

-- Question Six

SELECT *
FROM quickride.trips
WHERE rider_name LIKE 'A%';

-- Question seven

SELECT *
FROM quickride.trips
WHERE payment_method IN ('Card', 'Wallet');

-- Question Eight

SELECT *
FROM quickride.trips
WHERE rating IS NULL;

-- Question Nine

SELECT city, max(fare) as highest_fare
FROM quickride.trips 
WHERE status = 'Completed' GROUP BY city ORDER BY highest_fare DESC;

-- Question Ten

SELECT *
FROM quickride.trips
WHERE status = 'Completed' ORDER BY city ASC, fare DESC;

-- Question eleven-- 

SELECT
    SUM(fare) AS total_revenue,
    AVG(fare) AS average_fare,
    MAX(fare) AS biggest_fare,
    MIN(fare) AS smallest_fare
FROM quickride.trips
WHERE status = 'Completed';

-- Question twelve -- 

SELECT
    vehicle_type,
    COUNT(*) AS total_trips
FROM quickride.trips
GROUP BY vehicle_type
ORDER BY total_trips DESC;

-- Question thirteen --

SELECT city, SUM(fare) AS total_revenue
FROM quickride.trips
WHERE status = 'Completed'
GROUP BY city
ORDER BY total_revenue DESC;

-- Question fourteen -- 

SELECT city, AVG(rating) AS average_rating
FROM quickride.trips
WHERE rating IS NOT NULL
GROUP BY city
HAVING AVG(rating) < 4.0
ORDER BY average_rating ASC;

-- Question 15 -- 
