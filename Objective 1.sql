-- 1. View the menu_items table.
SELECT *
FROM menu_items;

-- 2. Find the number of items on the menu.
SELECT COUNT(*)
FROM menu_items;

-- There are 32 items in the table.

-- 3. What are the least and most expensive items on the menu?
SELECT *
FROM menu_items
ORDER BY price DESC;

-- Shrimp Scampi, 19.95

SELECT *
FROM menu_items
ORDER BY price;

-- Edamame, 5.00

-- 4. How many Italian dishes are on the menu?
SELECT COUNT(*) 
FROM menu_items
WHERE category = 'Italian';

-- There are 9 Italian dishes on the menu.

-- 5. What are the least and most expensive Italian dishes on the menu?
SELECT * 
FROM menu_items
WHERE category = 'Italian'
ORDER BY price;

-- Spaghetti, 14.50

SELECT * 
FROM menu_items
WHERE category = 'Italian'
ORDER BY price DESC;

-- Shrimp Scampi, 19.95

-- 6. How many dishes are in each category?
SELECT category, COUNT(menu_item_id) AS num_dishes
FROM menu_items
GROUP BY category;

-- 6 American, 8 Asian, 9 Mexican, 9 Italian

-- 7. What is the average dish price within each category?
SELECT category, AVG(price) AS avg_price
FROM menu_items
GROUP BY category;

-- $10 American, 13.50 Asian, 11.80 Mexican, 16.75 Italian