SELECT maker FROM product WHERE model in (SELECT model FROM laptop WHERE hd >= 100);