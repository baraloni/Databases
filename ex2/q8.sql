SELECT DISTINCT iid

FROM Costumer C, Purchase P

WHERE C.cid = P.cid

GROUP BY iid 

HAVING AVG(budget) >= ALL(SELECT AVG(budget)

			  FROM Costumer CC, Purchase PP

			  WHERE CC.cid = PP.cid
								  
                          GROUP BY PP.iid)
ORDER BY iid ASC;