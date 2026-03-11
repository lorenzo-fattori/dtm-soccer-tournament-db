# dtm-soccer-tournament-db

**Authors:** Lorenzo Fattori, Federico Tacchi  
**Course:** Digital Transformation Management – Database Systems  
**University:** University of Bologna (UNIBO)  

---

## Project Overview

This project was developed as part of the **Database Systems** exam for the Master’s Degree in Digital Transformation Management at the University of Bologna (UNIBO). It implements a **relational database** for a soccer tournament, storing information about players, teams, matches, leagues, referees, and contracts. It demonstrates the use of **SQL** for creating tables, inserting data, and running queries to analyze player performance, match history, and referee assignments. 

---

## Project Structure

```text
soccer-tournament-dtm
│
├── README.md
├── docs
│   └── project_report.pdf       # Detailed project report
├── sql
│   ├── create_tables.sql        # Table creation scripts
│   ├── insert_sample_data.sql   # Sample data insertion
│   └── queries.sql              # Example queries
└── diagrams                     # ER diagram of the database
    └── er_schema.png
    └── er_schema.er
```

---

## Setup Instructions

1. **Create the database**

   ```sql
   CREATE DATABASE IF NOT EXISTS soccer_tournament;
   USE soccer_tournament;
   ```

2. **Create tables** – Run `sql/create_tables.sql`.

3. **Insert sample data** – Run `sql/insert_sample_data.sql`.

4. **Explore queries** – Use `sql/queries.sql` for examples.

---

## Notes

* The database follows relational design principles.
* Sample data is for demonstration only.
* Scripts are compatible with **MySQL**.
* The project is intentionally simple because it has an educational purpose, to understand how the whole process of designing, creating and filling a database works.
