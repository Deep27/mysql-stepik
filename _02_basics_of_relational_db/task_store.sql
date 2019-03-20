-- Выведите список товаров с названиями товаров и названиями категорий,
-- в том числе товаров, не принадлежащих ни одной из категорий.
SELECT g.name, c.name FROM good g
	LEFT OUTER JOIN category_has_good chg
		ON g.id = chg.good_id
	LEFT OUTER JOIN category c
		ON c.id = chg.category_id;


-- Выведите список товаров с названиями категорий,
-- в том числе товаров, не принадлежащих ни к одной из категорий,
-- в том числе категорий не содержащих ни одного товара.

SELECT g.name good, c.name category FROM category c
	RIGHT OUTER JOIN category_has_good chg
		ON c.id = chg.category_id
	RIGHT OUTER JOIN good g
		ON chg.good_id = g.id
UNION
SELECT g.name good, c.name category FROM category c
	LEFT OUTER JOIN category_has_good chg
		ON c.id = chg.category_id
	LEFT OUTER JOIN good g
		ON chg.good_id = g.id; 
		
