# Restaurant Sales Analysis with SQL

## Project Overview
This project explores and analyzes a restaurant's sales data using SQL (MySQL). The aim was to extract actionable insights about menu pricing, order patterns, customer behavior, and cuisine preferences. The dataset consists of two tables: `menu_items` and `order_details`.

All queries and analysis were done independently from scratch, even though the dataset was sourced from a YouTube tutorial.

## Dataset
- Provided as a `.sql` script to create the database and tables.
- **Tables:**
  - `menu_items`
    - `menu_item_id` — Unique identifier for each menu item
    - `item_name` — Name of the dish
    - `category` — Cuisine category (e.g., Italian, Asian)
    - `price` — Price of the dish
  - `order_details`
    - `order_details_id` — Unique identifier for each row in `order_details`
    - `order_id` — Unique identifier for each order
    - `order_date` — Date of the order
    - `order_time` — Time of the order
    - `item_id` — Foreign key referencing `menu_item_id`

## Tools & Skills Used
- MySQL
- Aggregate Functions: `SUM()`, `COUNT()`, `AVG()`, `MAX()`, `MIN()`
- Common Table Expressions (CTEs)
- `HAVING`, `WHERE`, `ORDER BY`, `GROUP BY`
- Joins

## Key Insights
- The menu contains **32 items**.
- Most expensive item: **Shrimp Scampi** — \$19.95.
- Least expensive item: **Edamame** — \$5.00.
- Highest average category price: **Italian dishes** — \$16.75.
- Lowest average category price: **American dishes** — \$10.07.
- Total number of orders: **5,370**.
- Total items ordered: **12,234**.
- Large orders (quantity > 12): **23**.
- Most ordered item: **Hamburgers** — 622 orders.
- Most popular cuisine: **Asian** — 3,470 items ordered, followed by Italian, Mexican, and American.
- Least ordered item: **Chicken Tacos** — 123 orders.
- Top 5 customers by revenue:
  1. Customer 440 — \$192.14
  2. Customer 2075 — \$191.05
  3. Customer 1957 — \$190.10
  4. Customer 330 — \$189.70
  5. Customer 2675 — \$185.10
- These top customers ordered **Italian dishes** most frequently.

## Files Included
- `Restaurant DB.sql` — SQL script to create the tables and load data.
- `Menu Table Analysis.sql` — Analysis queries focused on the `menu_items` table (e.g., pricing, categories).
- `Order Details Analysis.sql` — Analysis queries focused on the `order_details` table (e.g., order volumes, dates).
- `Advanced Analysis.sql` — Advanced analysis using joins between `menu_items` and `order_details` to uncover customer and cuisine patterns.
- `insights_summary.pdf` — Summary report of key findings.

## Skills Demonstrated
- Data exploration & cleaning
- Writing optimized SQL queries
- Deriving business insights from data
- Organizing analysis logically across scripts
- Summarizing and presenting results
