## Day 7 – Databricks Job Orchestration

This job orchestrates parameterized notebooks using Databricks Workflows.

### 🔁 Workflow Structure
Bronze → Silver → Gold

### 🧩 Tasks
| Task Name | Notebook | Dependency |
|----------|----------|------------|
| bronze_task | Day_7_Bronze_Run | None |
| silver_task | Day_7_Silver_Run | bronze_task |
| gold_task | Day_7_Gold_Run | silver_task |

### ⚙️ Parameters Used
- run_date (string)

### ⏰ Scheduling
- Frequency: Daily
- Trigger type: Scheduled

### ✅ Execution Validation
- Verified via Databricks Jobs run logs
- All tasks executed successfully in sequence

