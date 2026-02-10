CREATE VIEW sales_summary AS
SELECT o.order_id,
       c.name AS customer_name,
       o.order_date,
       o.total_amount,
       p.payment_status
FROM orders o
JOIN customers c ON o.customer_id = c.customer_id
JOIN payments p ON o.order_id = p.order_id;
