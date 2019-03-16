use project_simple;

-- количество записей в таблице
SELECT COUNT(1) FROM project;

SELECT AVG(budget) FROM project;

SELECT
	project_finish, project_start, DATEDIFF(project_finish, project_start)
FROM project
WHERE project_finish IS NOT NULL; 
    
SELECT
	AVG(DATEDIFF(project_finish, project_start)) AS avg_days,
    MAX(DATEDIFF(project_finish, project_start)) AS max_days,
    MIN(DATEDIFF(project_finish, project_start)) AS min_days
FROM project WHERE project_finish IS NOT NULL; 
    
SELECT
	client_name,
	AVG(DATEDIFF(project_finish, project_start)) AS avg_days,
    MAX(DATEDIFF(project_finish, project_start)) AS max_days,
    MIN(DATEDIFF(project_finish, project_start)) AS min_days
FROM project WHERE project_finish IS NOT NULL
GROUP BY client_name
ORDER BY max_days DESC
LIMIT 5;
    
SELECT
	COUNT(1),
    AVG(budget),
    client_name
FROM project
GROUP BY client_name; -- без этой строки запрос будет некорректным

