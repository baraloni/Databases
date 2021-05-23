SELECT DISTINCT cname
FROM Costumer C
WHERE budget>=7000 AND NOT EXISTS ( SELECT *
												FROM Item I
												WHERE price<=300 AND I.iid  NOT IN (SELECT DISTINCT P.iid 
																								FROM Purchased P
																								WHERE P.cid=C.cid ))
ORDER BY cname ASC