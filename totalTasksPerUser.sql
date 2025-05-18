SELECT
    users.id as user_id,
    users.name as user_name,
    COUNT(tasks.id) AS task_count
FROM
    task_manager.users as users
    LEFT JOIN task_manager.tasks as tasks ON users.id = tasks.user_id
GROUP BY
    users.id,
    users.name;