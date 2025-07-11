SELECT *
FROM restaurant_db.menu_items;


-- Finding the the number of items on the menu
SELECT COUNT(menu_item_id) AS total_items
FROM menu_items;


-- What are the least and most expensive items on the menu?
SELECT item_name, price
FROM menu_items
WHERE price = (
	SELECT MAX(price)
	FROM menu_items
);

SELECT item_name, price
FROM menu_items
WHERE price = (
	SELECT MIN(price)
	FROM menu_items
);


-- How many Italian dishes are on the menu?
SELECT COUNT(item_name)
FROM menu_items
WHERE category = 'Italian';


-- What are the least and most expensive Italian dishes on the menu?
SELECT item_name
FROM menu_items
WHERE price = (
	SELECT MAX(price)
	FROM menu_items
	WHERE category = 'Italian'
) AND category = 'Italian';

SELECT item_name
FROM menu_items
WHERE price = (
	SELECT MIN(price)
	FROM menu_items
	WHERE category = 'Italian'
) AND category = 'Italian';


-- How many dishes are in each category?
SELECT category, COUNT(item_name) AS total_dishes
FROM menu_items
GROUP BY category;


-- What is the average dish price within each category?
SELECT category, ROUND(AVG(price), 2) AS avg_price
FROM menu_items
GROUP BY category;