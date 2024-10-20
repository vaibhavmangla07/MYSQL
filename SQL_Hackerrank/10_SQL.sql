--Weather Observation Station 5
SELECT city c, length(city) l FROM station
ORDER BY l DESC, c ASC
LIMIT 1;

SELECT city c, length(city) l FROM station
ORDER BY l ASC, c ASC
LIMIT 1;