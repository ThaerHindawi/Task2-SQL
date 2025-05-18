SELECT
    users.id as user_id,
    users.name as user_name,
    COUNT(tasks.id) AS completed_tasks
FROM
    task_manager.users as users
    LEFT JOIN task_manager.tasks as tasks ON users.id = tasks.user_id
WHERE
    is_completed = true
GROUP BY
    users.id,
    users.name
HAVING
    COUNT(tasks.id) >= ALL (
        SELECT
            COUNT(*)
        FROM
            task_manager.tasks
        WHERE
            is_completed = true
        GROUP BY
            user_id
    );