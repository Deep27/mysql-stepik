use project_simple;

-- общее количество заказов компании
SELECT COUNT(1) FROM project;

-- общее кол-во заказов, сумма стоимостей (бюджетов) всех проектов, средний срок исполнения заказа в днях
SELECT
	COUNT(1) AS orders_total,
    SUM(budget) AS sum_total,
    AVG(DATEDIFF(project_finish, project_start)) AS avg_time
FROM project;
    
