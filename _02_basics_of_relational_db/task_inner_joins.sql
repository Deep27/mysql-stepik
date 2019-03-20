USE store;

-- Выведите все позиций списка товаров, принадлежащие какой-либо категории с названиями товаров и названиями категорий.
-- Список должен быть отсортирован по названию товара, названию категории.
-- Для соединения таблиц необходимо использовать оператор INNER JOIN.

SELECT g.name AS 'Good', c.name AS 'Category'
	FROM good AS g
		INNER JOIN category_has_good AS chg
			ON g.id = chg.good_id
		INNER JOIN category as c
			ON chg.category_id = c.id
	ORDER BY g.name, c.name;

-- Выведите список клиентов (имя, фамилия) и количество заказов данных клиентов, имеющих статус "new".
-- Ожидаемый формат результата:
-- +------------+------------+----------------------+
-- | first_name | last_name  | new_sale_num         |
-- +------------+------------+----------------------+
-- | Ivan       | Ivanov     |                   10 |
-- | Petr       | Petrov     |                    7 |
-- | Semen      | Sidorov    |                    7 |
-- | Frank     | Sinatra    |                    2 |
-- | Ella       | Fitzgerald |                    1 |

SELECT cl.first_name, cl.last_name, COUNT(s.status_id = 1) AS new_sale_num
 	FROM sale s
 		INNER JOIN client cl
			ON cl.id = s.client_id
            WHERE s.status_id = 1
	GROUP BY cl.id
	ORDER BY cl.first_name, cl.last_name;

