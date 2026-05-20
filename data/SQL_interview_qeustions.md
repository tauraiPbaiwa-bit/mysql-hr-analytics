# Top 10 SQL Interview Questions & Answers

A quick-reference guide covering fundamental SQL concepts, perfect for interview preparation or a rapid refresher.

---

## Questions & Answers

### 1. What is the difference between WHERE and HAVING?
* **`WHERE`**: Filters individual rows **before** any grouping (`GROUP BY`) takes place.
* **`HAVING`**: Filters grouped data **after** the `GROUP BY` clause has been applied.

### 2. What is a JOIN and what are its types?
* **Definition**: Used to combine rows from two or more tables based on a related column between them.
* **Main Types**:
  * `INNER JOIN`: Returns records that have matching values in both tables.
  * `LEFT JOIN`: Returns all records from the left table, and matching records from the right table.
  * `RIGHT JOIN`: Returns all records from the right table, and matching records from the left table.
  * `FULL JOIN`: Returns all records when there is a match in either the left or right table.

### 3. What is the difference between INNER JOIN and LEFT JOIN?
* **`INNER JOIN`**: Only returns rows where there is a successful match in **both** tables.
* **`LEFT JOIN`**: Returns **all** rows from the left table, plus matching rows from the right table. If there is no match, the right side returns `NULL`.

### 4. What is a subquery?
* **Definition**: A query nested inside another SQL query (also referred to as an inner query).
* **Purpose**: Used within clauses like `SELECT`, `FROM`, or `WHERE` to perform dynamic filtering or intermediate calculations.

### 5. What is the difference between IN and EXISTS?
* **`IN`**: Compares a value against a specific list or a single column result from a subquery. It scans the entire set.
* **`EXISTS`**: Evaluates to true or false by checking for the *existence* of rows matching a subquery condition. It exits early as soon as a match is found (often faster on large datasets).

### 6. What are window functions?
* **Definition**: Functions that perform calculations across a set of table rows relative to the current row, without collapsing the rows into a single summary row (unlike `GROUP BY`).
* **Common Examples**: `ROW_NUMBER()`, `RANK()`, and `DENSE_RANK()`.

### 7. What is indexing?
* **Definition**: A performance optimization technique that creates a pointer structure over table columns.
* **Purpose**: Dramatically speeds up data retrieval and improves overall query execution times.

### 8. What is normalization?
* **Definition**: The process of organizing data in a database to eliminate data redundancy and ensure data dependency.
* **Method**: Involves splitting large tables into smaller, interconnected tables to maintain data integrity.

### 9. What is GROUP BY?
* **Purpose**: Groups rows that share the same values into summary rows.
* **Usage**: Almost always used alongside aggregate functions like `COUNT()`, `SUM()`, and `AVG()`.

### 10. What is the difference between DELETE and TRUNCATE?
* **`DELETE`**: A DML command that removes rows matching a specific condition (`WHERE`). It logs each row deletion and can be rolled back.
* **`TRUNCATE`**: A DDL command that removes all data from a table by deallocating the pages. It is significantly faster, cannot take a `WHERE` condition, and generally cannot be rolled back.

---
