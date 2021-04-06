SELECT name, owner FROM pet WHERE birth >= '1990-1-1' AND sex = 'f' ORDER BY name ASC;

UPDATE pet SET name = 'clwalls' WHERE name = 'Whistler';

UPDATE pet SET death = '2019-09-05' WHERE name = 'Buffy';

SELECT * FROM pet;