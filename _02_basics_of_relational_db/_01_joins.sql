USE store_medium;

SELECT * FROM product, category;
SELECT * FROM product CROSS JOIN category;

SELECT * FROM product INNER JOIN category
	ON product.category_id = category.category_id;

SELECT
	p.product_name, p.price, c.category_name
	FROM product AS p INNER JOIN category AS c
	ON p.category_id = c.category_id;
    
