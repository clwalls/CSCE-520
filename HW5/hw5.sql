#HW 5 for Christopher Walls, CSCE 520
#Excercise 6.3.1
# a) Find the makers of PC's with a speed of at least 3.0.
select maker from product where model in (select model from pc where speed >= 3.0);

# b) Find the printers with the highest price.
select max(price), model from printer;

# ! c) Find the laptops whose speed is slower than that of any PC.
# if reading literal, it should be max, otherwise min
select model from laptop where speed<(select max(speed) from pc);

# ! d) Find the model number of the item (PC, laptop, or printer) with the 
# highest price.
select model from (select model, price from pc UNION select model, price 
from laptop UNION select model, price from printer) mp where mp.price 
in(select max(price) from (select price from pc UNION select price from 
laptop UNION select price from printer) m2);

# ! e) Find the maker of the color printer with the lowest price.
select maker from product where model in (select model from printer where 
price in(select min(price) from printer where color=true));

# !! f) Find the maker(s) of the PC(s) with the fastest processor among 
# all those PC's that have the smallest amount of RAM.
select maker from product where model in(select model from pc where 
speed =(select max(speed) from pc) and ram = (select min(ram) from pc));