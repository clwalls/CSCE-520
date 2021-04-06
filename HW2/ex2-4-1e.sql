select maker from product
 where type = 'laptop'
 and maker not in
 (select maker from product
 where type = 'pc');
 