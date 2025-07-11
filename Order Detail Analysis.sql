SELECT *
FROM restaurant_db.order_details;


-- What is the date range of the table?
SELECT MIN(order_date), MAX(order_date)
FROM restaurant_db.order_details;


-- How many orders were made within this date range?
SELECT COUNT(DISTINCT(order_id)) as total_orders
FROM restaurant_db.order_details;

-- How many items were ordered within this date range?
SELECT COUNT(order_details_id) as total_items_ordered
FROM restaurant_db.order_details;


-- Which orders had the most number of items?
SELECT order_id, COUNT(order_id) as total_orders
FROM restaurant_db.order_details
GROUP BY order_id
ORDER BY total_orders DESC;


-- How many orders had more than 12 items?
WITH big_orders AS(
SELECT order_id, COUNT(order_id) total_orders
FROM order_details
GROUP BY order_id
HAVING total_orders > 12
)
SELECT COUNT(order_id)
FROM big_orders;