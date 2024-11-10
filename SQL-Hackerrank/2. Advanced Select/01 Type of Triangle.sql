-- Type of Triangle

SELECT 

IF(A+B<=C OR B+C<=A OR A+C<=B,"Not A Triangle",
IF(A=B AND B=C,"Equilateral",
IF(A=B OR B=C or A=C,"Isosceles","Scalene")))

FROM TRIANGLES;
