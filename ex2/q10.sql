WITH helper(cid) AS (SELECT DISTINCT P.cid

		    FROM Purchase P, Item I

		    WHERE P.iid=I.iid AND price>500)

DELETE FROM Costumer C

WHERE C.cid NOT IN (SELECT H.cid FROM helper H);
