SELECT * FROM orders

--Find the Total number of Orders by Categories
SELECT COUNT(Order_number), p.category
FROM orders AS o
LEFT JOIN products AS p
ON o.product_id = p.product_id
GROUP BY p.Category
