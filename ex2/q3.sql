SELECT DISTINCT C.cname

FROM Purchase P, Costumer C, Item I

WHERE C.cid=P.cid AND I.iid=P.iid AND I.itype="smartphone"

ORDER BY C.cname ASC

INTERSECT

SELECT DISTINCT CC.cname

FROM Purchase PP, Costumer CC, Item I
I
WHERE CC.cid=PP.cid AND II.iid=PP.iid AND II.itype="laptop";