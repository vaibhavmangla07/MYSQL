-- Weather Observation Station 9

SELECT DISTINCT CITY 
FROM STATION 
WHERE CITY REGEXP '^[^aeiou]';
