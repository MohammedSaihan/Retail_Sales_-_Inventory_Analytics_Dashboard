-- 1.Calculate the revenue?
SELECT
    transaction_id,
    date,
    customer_id,
    product_category,
    quantity,
    price_per_unit,
    quantity * price_per_unit AS revenue
FROM sales_behavior;

-- 2️.TOTAL SALES & REVENUE

SELECT
    COUNT(DISTINCT transaction_id) AS total_transactions,
    SUM(quantity) AS total_units_sold,
    SUM(quantity * price_per_unit) AS total_revenue
FROM sales_behavior;

-- 3.MONTHLY SALES TREND

SELECT
    DATE_FORMAT(date, '%Y-%m') AS month,
    SUM(quantity * price_per_unit) AS monthly_revenue
FROM sales_behavior
GROUP BY month
ORDER BY month;

-- 4.MONTH-ON-MONTH GROWTH

WITH monthly_sales AS (
    SELECT
        DATE_FORMAT(date, '%Y-%m') AS month,
        SUM(quantity * price_per_unit) AS revenue
    FROM sales_behavior
    GROUP BY month
)
SELECT
    month,
    revenue,
    revenue - LAG(revenue) OVER (ORDER BY month) AS revenue_change,
    ROUND(
        (revenue - LAG(revenue) OVER (ORDER BY month)) /
        LAG(revenue) OVER (ORDER BY month) * 100, 2
    ) AS growth_percentage
FROM monthly_sales;


-- 5.sales_behavior

SELECT
    product_category,
    SUM(quantity * price_per_unit) AS category_revenue
FROM sales_behavior
GROUP BY product_category
ORDER BY category_revenue DESC;

-- 6.TOP 20% PRODUCTS GENERATING MOST REVENUE

WITH product_sales AS (
    SELECT
        product_category,
        SUM(quantity * price_per_unit) AS revenue
    FROM sales_behavior
    GROUP BY product_category
),
ranked_products AS (
    SELECT
        product_category,
        revenue,
        NTILE(5) OVER (ORDER BY revenue DESC) AS revenue_bucket
    FROM product_sales
)
SELECT
    product_category,
    revenue
FROM ranked_products
WHERE revenue_bucket = 1;

-- 7.CUSTOMER SEGMENTATION BY SPENDING

SELECT
    customer_id,
    SUM(quantity * price_per_unit) AS total_spent,
    CASE
        WHEN SUM(quantity * price_per_unit) >= 5000 THEN 'High Value'
        WHEN SUM(quantity * price_per_unit) >= 2000 THEN 'Medium Value'
        ELSE 'Low Value'
    END AS customer_segment
FROM sales_behavior
GROUP BY customer_id;

-- 8.AGE GROUP ANALYSIS

SELECT
    age_group,
    SUM(quantity * price_per_unit) AS revenue
FROM sales_behavior
GROUP BY age_group
ORDER BY revenue DESC;

-- 9.GENDER-BASED PURCHASING BEHAVIOR

SELECT
    gender,
    COUNT(DISTINCT customer_id) AS customers,
    SUM(quantity * price_per_unit) AS revenue
FROM sales_behavior
GROUP BY gender;

-- 10.AVERAGE ORDER VALUE (AOV)

SELECT
    ROUND(
        SUM(quantity * price_per_unit) / COUNT(DISTINCT transaction_id),
        2
    ) AS average_order_value
FROM sales_behavior;

-- 11.TOP CUSTOMERS BY REVENUE 
SELECT
    customer_id,
    SUM(quantity * price_per_unit) AS total_revenue
FROM sales_behavior
GROUP BY customer_id
ORDER BY total_revenue DESC
LIMIT 10;

-- 12.LOW-PERFORMING PRODUCT CATEGORIES
SELECT
    product_category,
    SUM(quantity * price_per_unit) AS revenue
FROM sales_behavior
GROUP BY product_category
HAVING revenue < (
    SELECT AVG(quantity * price_per_unit) FROM sales_behavior
)
ORDER BY revenue;


