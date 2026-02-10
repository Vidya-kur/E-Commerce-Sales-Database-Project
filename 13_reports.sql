SELECT MONTH(order_date) AS month,
       SUM(total_amount) AS monthly_sales
FROM orders
GROUP BY MONTH(order_date);

SELECT o.order_id, c.name, pay.payment_status
FROM orders o
JOIN customers c ON o.customer_id = c.customer_id
JOIN payments pay ON o.order_id = pay.order_id
WHERE pay.payment_status = 'Pending';
