# Elevate_task6
Sales Trend Analysis Using Aggregations
# Monthly Revenue & Order Volume Analysis (SQL)

## Project Overview
This project analyzes online sales data to calculate monthly revenue and order volume.
The analysis is performed using SQL functions such as EXTRACT(), SUM(), COUNT(), GROUP BY, ORDER BY, and LIMIT.

The dataset contains:
- order_id
- product_id
- amount
- order_date

## Objectives
- Extract month and year from order_date
- Group data by year and month
- Calculate total revenue per month
- Count distinct orders per month
- Sort results chronologically
- Limit output to specific time periods

## SQL Concepts Used

1. EXTRACT(MONTH FROM order_date)
   - Used to extract month from order_date.

2. GROUP BY (Year, Month)
   - Groups records based on year and month.

3. SUM(amount)
   - Calculates total revenue.

4. COUNT(DISTINCT order_id)
   - Counts total unique orders (order volume).

5. ORDER BY
   - Sorts results by year and month.

6. LIMIT
   - Restricts results to specific time periods.

## Sample SQL Query

```sql
SELECT 
    EXTRACT(YEAR FROM order_date) AS year,
    EXTRACT(MONTH FROM order_date) AS month,
    SUM(amount) AS total_revenue,
    COUNT(DISTINCT order_id) AS order_volume
FROM order_a
GROUP BY year, month
ORDER BY year, month
LIMIT 12;
