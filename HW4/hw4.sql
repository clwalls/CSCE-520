select maker, count(model) from Product where type='PC' group by maker having count(model) >= 1;

select max(screen from Laptop INNER JOIN product ON (
product.model = laptop.model)
where maker = 'E';

select avg(price), maker from (select price,maker from laptop NATURAL JOIN product UNION 
select price,maker from pc NATURAL JOIN product UNION 
select price,maker from printer JOIN product 
where printer.model=product.model) as union_table group by maker having avg(price) >=200 order by avg(price) desc;