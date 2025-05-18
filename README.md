# 🧠 SQL Skill Assessment Task

## 🎯 Objective

Write SQL queries to retrieve insights from a simple task-tracking database using standard SQL (MySQL). No ORM or frameworks—raw SQL only.

---

## 📂 Database Schema

**users table:**

| Column | Type    |
|--------|---------|
| id     | INT (PK)|
| name   | VARCHAR |
| email  | VARCHAR |

**tasks table:**

| Column      | Type      |
|-------------|-----------|
| id          | INT (PK)  |
| user_id     | INT (FK)  |
| title       | VARCHAR   |
| is_completed| BOOLEAN   |
| created_at  | DATETIME  |

---

## 📋 Task Instructions & SQL Files

### 1. 🧮 Total Tasks Per User

**Question:**  
Return a list of all users and the total number of tasks assigned to each.

**Expected Columns:**  

- user_id  
- user_name  
- task_count  

**SQL:**  
See [`totalTasksPerUser.sql`](totalTasksPerUser.sql)

**Result:**

![Total Tasks Per User](https://github.com/ThaerHindawi/Task2-SQL/blob/main/totalTasksPerUser.png)

---

### 2. ✅ Task Completion Rate

**Question:**  
For each user, calculate:

- Total tasks
- Completed tasks

**Expected Columns:**  

- user_id  
- user_name  
- total_tasks  
- completed_tasks  

**SQL:**  
See [`taskCompletionRate.sql`](taskCompletionRate.sql)

**Result:**

![Task Completion Rate](https://github.com/ThaerHindawi/Task2-SQL/blob/main/taskCompletionRate.png)

---

### 3. 📆 Tasks Created in the Last 7 Days

**Question:**  
List the number of tasks created each day over the last 7 days, grouped by date.

**Expected Columns:**

- date (YYYY-MM-DD)  
- task_count  

**SQL:**  
See [`tasksCreatedInTheLastSevenDays.sql`](tasksCreatedInTheLastSevenDays.sql)

**Result:**

![Tasks Created in the Last 7 Days](https://github.com/ThaerHindawi/Task2-SQL/blob/main/tasksCreatedInTheLastSevenDays.png)

---

### 4. 🌟 Most Productive User

**Question:**  
Find the user who has completed the most tasks.

**Expected Columns:**

- user_id  
- user_name  
- completed_tasks  

**SQL:**  
See [`mostProductiveUser.sql`](mostProductiveUser.sql)

**Result:**

![Tasks Created in the Last 7 Days](https://github.com/ThaerHindawi/Task2-SQL/blob/main/mostProductiveUser.png)

---

## 🛠️ Setup

To set up the database and sample data, use [`setup.sql`](setup.sql).

When you download the file setup.sql please run the following command:

```bash
mysql -u root -p < setup.sql
```

---

## 📊 Visualizations

Each SQL file has a corresponding PNG image visualizing the results.

---

## 📁 File List

- [`setup.sql`](setup.sql): Database schema and sample data
- [`totalTasksPerUser.sql`](totalTasksPerUser.sql): Total tasks per user
- [`taskCompletionRate.sql`](taskCompletionRate.sql): Task completion rate per user
- [`tasksCreatedInTheLastSevenDays.sql`](tasksCreatedInTheLastSevenDays.sql): Tasks created in the last 7 days
- [`mostProductiveUser.sql`](mostProductiveUser.sql): Most productive user
