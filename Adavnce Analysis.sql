-- Combine the menu_items and order_details tables into a single table

SELECT *
FROM menu_items mi
JOIN order_details od
	ON mi.menu_item_id = od.item_id;


-- What were the least and most ordered items? What categories were they in?
SELECT category, item_name, COUNT(od.item_id) total_order
FROM order_details od
JOIN menu_items mi
	ON od.item_id = mi.menu_item_id
GROUP BY category, item_name
ORDER BY total_order DESC;


-- Number of orders by category
SELECT category, COUNT(od.item_id) total_order
FROM order_details od
JOIN menu_items mi
	ON od.item_id = mi.menu_item_id
GROUP BY category
ORDER BY total_order DESC;


-- Whar were the top 5 orders that spent the most money

SELECT order_id, SUM(price) total
FROM menu_items mi
JOIN order_details od
	ON mi.menu_item_id = od.item_id
GROUP BY order_id
ORDER BY total DESC
LIMIT 5;


-- View the details of the highest spend order.

SELECT category, COUNT(category)
FROM menu_items mi
JOIN order_details od
	ON mi.menu_item_id = od.item_id
WHERE order_id = 440
GROUP BY category;


-- View the details of the top 5 highest spend order.

SELECT category, COUNT(category)
FROM menu_items mi
JOIN order_details od
	ON mi.menu_item_id = od.item_id
WHERE order_id IN (440, 2075, 1957, 330, 2675)
GROUP BY category;