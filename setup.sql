-- Create the database
CREATE DATABASE IF NOT EXISTS task_manager;
USE task_manager;

-- Drop tables if they already exist (for clean re-run)
DROP TABLE IF EXISTS tasks;
DROP TABLE IF EXISTS users;

-- Create users table
CREATE TABLE users (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    email VARCHAR(100) NOT NULL
);

-- Create tasks table
CREATE TABLE tasks (
    id INT AUTO_INCREMENT PRIMARY KEY,
    user_id INT NOT NULL,
    title VARCHAR(255) NOT NULL,
    is_completed BOOLEAN DEFAULT FALSE,
    created_at DATETIME DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (user_id) REFERENCES users(id)
);

-- Insert sample users
INSERT INTO users (name, email) VALUES
('Alice Smith', 'alice@example.com'),
('Bob Johnson', 'bob@example.com'),
('Charlie Brown', 'charlie@example.com'),
('John Doe', 'john@example.com');

-- Insert sample tasks
INSERT INTO tasks (user_id, title, is_completed, created_at) VALUES
(1, 'Task A1', TRUE,  NOW() - INTERVAL 1 DAY),
(1, 'Task A2', FALSE, NOW() - INTERVAL 3 DAY),
(1, 'Task A3', TRUE,  NOW() - INTERVAL 6 DAY),

(2, 'Task B1', FALSE, NOW() - INTERVAL 2 DAY),
(2, 'Task B2', TRUE,  NOW() - INTERVAL 5 DAY),

(3, 'Task C1', TRUE,  NOW() - INTERVAL 1 DAY),
(3, 'Task C2', TRUE,  NOW() - INTERVAL 2 DAY),
(3, 'Task C3', TRUE,  NOW() - INTERVAL 7 DAY),
(3, 'Task C4', FALSE,  NOW() - INTERVAL 8 DAY);
