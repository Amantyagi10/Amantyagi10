-- Total Revenue
SELECT SUM(sales_amount) AS total_revenue
FROM sales;

-- Top 10 Customers
SELECT customer_name,
       SUM(sales_amount) AS revenue
FROM sales
GROUP BY customer_name
ORDER BY revenue DESC
LIMIT 10;

-- Monthly Revenue
SELECT MONTH(order_date) AS month,
       SUM(sales_amount) AS revenue
FROM sales
GROUP BY MONTH(order_date)
ORDER BY month;
