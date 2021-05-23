SELECT DISTINCT itype, AVG(price) AS avgPrice, MIN(price) AS minPrice, MAX(price) AS maxPrice

FROM Items 

ORDER BY itype ASC;
