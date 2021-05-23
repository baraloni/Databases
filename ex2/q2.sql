SELECT DISTINCT cname

FROM Purchase, Costumer, Item

WHERE itype="smartphone" AND quantity>=2

ORDER BY cname ASC;