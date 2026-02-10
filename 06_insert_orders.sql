INSERT INTO orders (customer_id, order_date) VALUES
(1, '2025-01-10'),
(2, '2025-02-15'),
(3, '2025-03-01'),
(4, '2025-03-20');

INSERT INTO order_items (order_id, product_id, quantity, subtotal) VALUES
(1, 1, 1, 55000),
(1, 2, 1, 2000),
(2, 3, 2, 3000),
(3, 4, 1, 25000),
(4, 5, 1, 3000);
