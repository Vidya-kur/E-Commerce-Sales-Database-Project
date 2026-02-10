SELECT SUM(total_amount) AS total_revenue FROM orders;

SELECT c.name, SUM(o.total_amount) AS spending
FROM customers c
JOIN orders o ON c.customer_id = o.customer_id
GROUP BY c.name
ORDER BY spending DESC
LIMIT 1;

SELECT pr.category, SUM(oi.subtotal) AS revenue
FROM order_items oi
JOIN products pr ON oi.product_id = pr.product_id
GROUP BY pr.category;
