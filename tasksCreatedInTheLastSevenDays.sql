SELECT
    DATE (created_at) AS 'date (YYYY-MM-DD)',
    COUNT(id) AS task_count
from
    task_manager.tasks
WHERE
    created_at >= CURDATE () - INTERVAL 7 DAY
GROUP BY
    DATE (created_at);