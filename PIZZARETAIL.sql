SELECT EXTRACT (DOW FROM order_date) AS order_day, COUNT (distinct order_id) AS Total_orders 
FROM pizzaretail 
GROUP BY order_day

SELECT TO_CHAR(order_date, 'MONTH') AS month_name, COUNT (distinct order_id) AS Total_orders 
FROM pizzaretail 
GROUP BY month_name
ORDER BY total_orders DESC

select * FROM pizzaretail

ALTER TABLE pizzaretail 
ALTER COLUMN order_time
TYPE time USING order_time :: time 

SELECT pizza_category, SUM (total_price) * 100 / (SELECT SUM (total_price) from pizzaretail) AS pct_sales 
FROM pizzaretail  
GROUP BY pizza_category 

SELECT pizza_category, SUM (total_price)
FROM pizzaretail
GROUP BY pizza_category


SELECT pizza_name, SUM (total_price) AS Total_revenue
FROM pizzaretail
GROUP BY pizza_name
ORDER BY Total_revenue ASC 
LIMIT 5 












