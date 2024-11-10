-- Weather Observation Station 7

SELECT DISTINCT CITY 
FROM STATION 
WHERE CITY REGEXP '[aeiou]$';
