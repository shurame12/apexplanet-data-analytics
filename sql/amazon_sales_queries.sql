-- ============================================
-- AMAZON SALES SQL ANALYSIS
-- Task 2 - ApexPlanet
-- ============================================


-- 1. Basic data extraction
SELECT *
FROM amazon_sales
LIMIT 10;


-- 2. Total orders
SELECT COUNT(*) AS total_orders
FROM amazon_sales;


-- 3. Total revenue
SELECT SUM(amount) AS total_revenue
FROM amazon_sales;


-- 4. Average order value
SELECT AVG(amount) AS average_order_value
FROM amazon_sales;


-- 5. Top 10 orders by revenue
SELECT
    order_id,
    category,
    qty,
    amount
FROM amazon_sales
WHERE amount IS NOT NULL
ORDER BY amount DESC
LIMIT 10;


-- 6. Sales by category
SELECT
    category,
    COUNT(*) AS total_orders,
    SUM(qty) AS total_quantity,
    SUM(amount) AS total_revenue,
    AVG(amount) AS average_order_value
FROM amazon_sales
GROUP BY category
ORDER BY total_revenue DESC;


-- 7. Categories with more than 1000 orders
SELECT
    category,
    COUNT(*) AS total_orders
FROM amazon_sales
GROUP BY category
HAVING COUNT(*) > 1000
ORDER BY total_orders DESC;


-- 8. Monthly sales
SELECT
    strftime('%Y-%m', date) AS month,
    COUNT(*) AS total_orders,
    SUM(amount) AS total_sales
FROM amazon_sales
GROUP BY month
ORDER BY month;


-- 9. Orders above average order value
SELECT
    order_id,
    category,
    amount
FROM amazon_sales
WHERE amount > (
    SELECT AVG(amount)
    FROM amazon_sales
)
ORDER BY amount DESC;


-- 10. Three-month moving average
WITH monthly_sales AS (
    SELECT
        strftime('%Y-%m', date) AS month,
        SUM(amount) AS total_sales
    FROM amazon_sales
    GROUP BY month
)

SELECT
    month,
    total_sales,
    AVG(total_sales) OVER (
        ORDER BY month
        ROWS BETWEEN 2 PRECEDING AND CURRENT ROW
    ) AS three_month_moving_average
FROM monthly_sales
ORDER BY month;


-- 11. Cumulative revenue
WITH monthly_sales AS (
    SELECT
        strftime('%Y-%m', date) AS month,
        SUM(amount) AS total_sales
    FROM amazon_sales
    GROUP BY month
)

SELECT
    month,
    total_sales,
    SUM(total_sales) OVER (
        ORDER BY month
    ) AS cumulative_revenue
FROM monthly_sales
ORDER BY month;


-- 12. Monthly sales with previous month
WITH monthly_sales AS (
    SELECT
        strftime('%Y-%m', date) AS month,
        SUM(amount) AS total_sales
    FROM amazon_sales
    GROUP BY month
)

SELECT
    month,
    total_sales,
    LAG(total_sales) OVER (
        ORDER BY month
    ) AS previous_month_sales
FROM monthly_sales
ORDER BY month;
