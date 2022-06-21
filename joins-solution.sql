-- 1. Get all customers and their addresses.
SELECT
	*
FROM customers
JOIN addresses
	ON customers.id = addresses.customer_id;

-- 2. Get all orders and their line items (orders, quantity and product).
SELECT
    orders.id,
    line_items.quantity,
    products.description
FROM line_items
JOIN orders
    ON line_items.order_id = orders.id
JOIN products
    ON line_items.product_id = products.id;

-- 3. Which warehouses have cheetos?
SELECT
	warehouse
FROM warehouse
JOIN warehouse_product
	ON warehouse_id = warehouse.id
JOIN products
	ON warehouse_product.product_id = products.id
WHERE products.description = 'cheetos';

-- 4. Which warehouses have diet pepsi?
