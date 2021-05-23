SELECT DISTINCT iid

FROM Items 

WHERE price>400

ORDER BY iid ASC

INTERSECT

(
SELECT DISTINCT P1.iid

FROM Purchase P1, Purchase P2, Purchase P3

WHERE P1.iid=P2.iid AND P2.iid=P3.iid AND P1.cid<>P2.cid AND P1.cid<>P3.cid AND P2.cid<>P3.cid

EXCEPT

SELECT DISTINCT P4.iid

FROM Purchase P4, Purchase P5, Purchase P6, Purchase P7

WHERE P4.iid=P5.iid AND P5.iid=P6.iid AND  P6.iid=P7.iid AND P4.cid<>P5.cid AND P4.cid<>P6.cid AND P4.cid<>P7.cid AND P5.cid<>P6.cid AND P5.cid<>P7.cid AND P6.cid<>P7.cid
);