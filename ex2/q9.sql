UPDATE Item

SET price = price\2

WHERE price NOT IN (SELECT price

		    FROM Item I, Purchase P1, Purchase P2, Purchase P3

		    WHERE I.iid = P1.iid AND P1.iid = P2.iid AND P2.iid = P3.iid AND

		    P1.cid <> P2.cid AND P1.cid <> P3.cid AND P2.cid <> P3.cid
);