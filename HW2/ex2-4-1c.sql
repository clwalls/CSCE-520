(SELECT  model, price FROM PC WHERE model IN (SELECT model FROM product WHERE maker='B'))
 UNION (SELECT  model, price FROM laptop WHERE model IN (SELECT model FROM product WHERE maker='B')) 
 UNION (SELECT  model, price FROM printer WHERE model IN (SELECT model FROM product WHERE maker='B'));