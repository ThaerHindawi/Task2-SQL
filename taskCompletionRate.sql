SELECT
    users.id as user_id,
    users.name as user_name,
    COUNT(tasks.id) AS total_tasks,
    SUM(
        CASE
            WHEN tasks.is_completed = 1 THEN 1
            ELSE 0
        END
    ) AS completed_tasks
FROM
    task_manager.users as users
    LEFT JOIN task_manager.tasks as tasks ON users.id = tasks.user_id
GROUP BY
    users.id,
    users.name;