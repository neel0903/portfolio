
CREATE TRIGGER update_inventory_level
AFTER INSERT ON Orders
FOR EACH ROW
BEGIN
  UPDATE Products SET inventory_level = inventory_level - NEW.quantity
  WHERE product_id = NEW.product_id;
END;

--Trigger to update total amount in Invoices table after an order is placed:

CREATE TRIGGER update_total_amount
AFTER INSERT ON Orders
BEGIN
  INSERT INTO Invoices (order_id, payment_id, discount_id, customer_id, invoice_date, due_date, total_amount, discount_amount, tax_amount, paid_amount, payment_status)
  VALUES (NEW.order_id, NULL, NULL, NEW.customer_id, NEW.order_date, NULL, NEW.quantity * Products.price, 0, 0, 0, 'unpaid');
END;