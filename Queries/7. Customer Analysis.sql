SELECT 
    c.customer_id , 
    c.country_code, 
    COUNT(o.order_id) AS total_orders , 
    ROUND(SUM(o.total_amount)) AS total_spent,
    CASE 
       WHEN ROUND(SUM(o.total_amount)) > :spending_param THEN 'VIP'   --Parameters makes query dynamic and flexible
       ELSE 'Regular'
    END AS customer_segment   
FROM customers AS c
LEFT JOIN orders AS o
ON c.customer_id = o.customer_id
WHERE c.country_code = :country_param
GROUP BY c.customer_id , c.country_code
