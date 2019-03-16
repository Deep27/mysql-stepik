use store_simple;

SELECT category, count(1) FROM store
GROUP BY category
ORDER BY category;

-- revenue
SELECT SUM(price * sold_num) AS 'Revenue'
FROM store;

-- most popular categories
SELECT category, COUNT(category) AS total_goods
FROM store
GROUP BY category
ORDER BY total_goods DESC;

-- top 10 popular products
SELECT product_name, sold_num
FROM store
ORDER BY sold_num DESC, product_name
LIMIT 10;

-- top 5 categories with lagrest revenue
SELECT
	category,
	SUM(price * sold_num) AS revenue
FROM store
GROUP BY category
ORDER BY revenue DESC
LIMIT 5;

