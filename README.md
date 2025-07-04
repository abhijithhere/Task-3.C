**ARTOGRAPH**
TASK 3.C

#  Analytical SQL Queries for EMR Insights


## Requirements

- No special dependencies required for SQL-only execution.
- You can run the project using any of the following:
  - [SQLite Online Editor](https://sqliteonline.com)
  - DB Browser for SQLite *(desktop app)*
  - Any local or cloud SQL-compatible tool (e.g., MySQL, PostgreSQL, SQLite)


##  Overview
This project showcases analytical SQL skills by querying a simulated EMR (Electronic Medical Records) database. It involves complex joins, filtering, and aggregation to extract actionable clinical insights such as disease tracking, patient imaging history, and visit volume analysis.


##  Features

- Multi-table JOINs across `Patients`, `Visits`, `Diagnoses`, and `Medical_Images`
- Filters based on date and condition codes
- Aggregation logic to count visits and images per patient
- Organized for quick local execution and testing with SQLite


##  Files

| File | Description |
|------|-------------|
| `setup.sql` | Schema and dummy data for EMR simulation |
| `queriy.sql` | Contains the 3 key analytical queries with inline comments |
| `README.md` | Complete documentation to run and understand the project |

---



##  Database Schema

```sql
Patients(patient_id, name, dob)
Visits(visit_id, patient_id, visit_date)
Diagnoses(diagnosis_id, visit_id, condition_code)
Medical_Images(image_id, patient_id, image_type, generated_date)
```

## Challenges Faced
Designing a compact schema representative of a real EMR system.

Ensuring SQL compatibility across platforms like SQLite.

Writing clear, efficient queries to simulate clinical reporting logic.
