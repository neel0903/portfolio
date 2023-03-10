--View to show customer order history

CREATE VIEW customer_order_history AS 
SELECT 
    o.order_id,o.order_date,o.product_id,p.name,p.description,p.price,o.quantity, 
    c.customer_id,c.name,c.address,c.contact_number,c.email 
FROM 
    orders o 
    JOIN customers c 
    ON o.customer_id = c.customer_id
    JOIN products p
    ON o.product_id = p.product_id;

--View to show product inventory levels
CREATE VIEW product_inventory_levels AS
SELECT p.product_id, p.name, p.inventory_level
FROM Products p;

--View to show total sales by employee:
CREATE VIEW total_sales_by_employee AS
SELECT e.employee_id, e.name, SUM(s.total_amount) AS total_sales
FROM Sales s
JOIN Employees e ON s.employee_id = e.employee_id
GROUP BY e.employee_id;


--View to show supplier information for a product
CREATE VIEW product_supplier_info AS
SELECT p.product_id, p.name, s.name AS supplier_name, s.contact_info AS supplier_contact_info
FROM Products p
JOIN Suppliers s ON p.supplier_id = s.supplier_id;

--View to show unpaid invoices
CREATE VIEW unpaid_invoices AS
SELECT i.invoice_id, o.order_id, c.name AS customer_name, i.total_amount, i.due_date
FROM Invoices i
JOIN Orders o ON i.order_id = o.order_id
JOIN Customers c ON o.customer_id = c.customer_id
WHERE i.paid_amount < i.total_amount;

--View to show product sales by category
CREATE VIEW product_sales_by_category AS
SELECT c.name AS category_name, p.name AS product_name, SUM(o.quantity) AS total_quantity_sold
FROM Products p
JOIN Category c ON p.category_id = c.category_id
JOIN Orders o ON p.product_id = o.product_id
GROUP BY c.name, p.name;

--Top 5 Customers
--This view can show the top 5 customers based on their total purchase amount.
CREATE VIEW top_5_customers AS
SELECT c.name AS customer_name, SUM(o.total_amount) AS total_purchase_amount
FROM Customers c
JOIN Orders o ON c.customer_id = o.customer_id
GROUP BY c.customer_id
ORDER BY total_purchase_amount DESC
LIMIT 5;

--Out of Stock Products
--This view can show the list of products that are out of stock.
CREATE VIEW out_of_stock_products AS
SELECT p.name AS product_name, p.inventory_level AS current_inventory
FROM Products p
WHERE p.inventory_level = 0;

--Total Revenue by Month
--This view can show the total revenue for each month.

CREATE VIEW revenue_by_month AS
SELECT strftime('%Y-%m', o.order_date) AS month, SUM(o.total_amount) AS total_revenue
FROM Orders o
GROUP BY strftime('%Y-%m', o.order_date)
ORDER BY month;

--Customers without Orders
--This view can show the list of customers who haven't placed any orders

CREATE VIEW customers_without_orders AS
SELECT c.name AS customer_name, c.address, c.contact_number, c.email
FROM Customers c
LEFT JOIN Orders o ON c.customer_id = o.customer_id
WHERE o.order_id IS NULL;


