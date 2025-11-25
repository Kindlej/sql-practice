-- Count total customers
SELECT COUNT(*) AS total_customers
FROM customers;

-- Top 5 products by revenue
SELECT product_id, SUM(amount) AS total_revenue
FROM sales
GROUP BY product_id
ORDER BY total_revenue DESC
LIMIT 5;

-- Monthly sales summary
SELECT DATE_TRUNC('month', sale_date) AS month, SUM(amount) AS monthly_total
FROM sales
GROUP BY month
ORDER BY month;

-- Customers by region
SELECT region, COUNT(*) AS total_customers
FROM customers
GROUP BY region
ORDER BY total_customers DESC;
