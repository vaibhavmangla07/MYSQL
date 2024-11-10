-- Weather Observation Station 6

SELECT DISTINCT CITY 
FROM STATION 
WHERE CITY REGEXP '^[aeiou]';
