USE store_medium;

-- the same result as below
SELECT * FROM category c
	LEFT OUTER JOIN product p ON p.category_id = c.category_id;
    
-- the same result as above
SELECT * FROM product p
	RIGHT OUTER JOIN category c ON p.category_id = c.category_id;
    
-- найти дорогие и дешевые товары в бд
SELECT * FROM product WHERE price > 900
UNION
SELECT * FROM product WHERE price < 100;

-- найти самые дорогие и дешевые товары
SELECT * FROM product
	WHERE price = (SELECT MIN(price) FROM product)
UNION
SELECT * FROM product
	WHERE price = (SELECT MAX(price) FROM product);

