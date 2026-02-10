ALTER TABLE orders
ADD FOREIGN KEY (customer_id) REFERENCES customers(customer_id);

ALTER TABLE order_items
ADD FOREIGN KEY (order_id) REFERENCES orders(order_id);

ALTER TABLE order_items
ADD FOREIGN KEY (product_id) REFERENCES products(product_id);

ALTER TABLE payments
ADD FOREIGN KEY (order_id) REFERENCES orders(order_id);
