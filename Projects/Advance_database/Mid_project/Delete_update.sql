--Update the price of a product with a specific product_id:

UPDATE Products
SET price = 19.99
WHERE product_id = 123;



--Update the address of a customer with a specific customer_id:

UPDATE Customers
SET address = '123 Main St.'
WHERE customer_id = 456;

--Delete an order with a specific order_id:

DELETE FROM Products
WHERE product_id = 11;

DELETE FROM Customers WHERE customer_id = 11;
--Update the name and description of a discount with a specific discount_id:

UPDATE Discounts
SET name = '10% off', description = 'New Year Sale'
WHERE discount_id = 234;


--Delete a product with a specific product_id:

DELETE FROM Products
WHERE product_id = 3

ALTER TABLE Customers
ADD CONSTRAINT unique_email
UNIQUE (email);

ALTER TABLE Customers
ADD CONSTRAINT unique_email UNIQUE (email);

