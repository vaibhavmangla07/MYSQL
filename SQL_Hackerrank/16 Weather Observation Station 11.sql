-- Weather Observation Station 11

SELECT DISTINCT CITY 
FROM STATION 
WHERE CITY NOT REGEXP '^[aeiou].*[aeiou]$';
