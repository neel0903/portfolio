INSERT INTO Customers (customer_id,name, address, contact_number, email)
VALUES (1, 'John Doe', '123 Main St', '555-1234', 'john.doe@example.com'),
		(2,'Jane Doe', '456 Park Ave', '555-555-5678', 'jane.doe@email.com'),
		(3,'Bob Johnson', '789 Elm St', '555-555-9012', 'bob.johnson@email.com'),
		(4,'Sarah Lee', '321 Maple Ave', '555-555-3456', 'sarah.lee@email.com'),
		(5,'David Chen', '654 Pine St', '555-555-7890', 'david.chen@email.com'),
		(6,'Maria Garcia', '987 Oak Ave', '555-555-2345', 'maria.garcia@email.com'),
		(7,'Michael Brown', '321 Elm St', '555-555-6789', 'michael.brown@email.com'),
		(8,'Laura Davis', '654 Main St', '555-555-0123', 'laura.davis@email.com'), 		(9,'Peter Kim', '789 Maple Ave', '555-555-4567', 'peter.kim@email.com'),
		(10,'Amanda Lee', '123 Pine St', '555-555-8901', 'amanda.lee@email.com');
		
		
INSERT INTO Suppliers (supplier_id, name, address, city, state, country, contact_info, TIN_number) VALUES
(1, 'ABC Suppliers', '123 Main St', 'Anytown', 'CA', 'USA', '555-1234', '123-45-6789'),
(2, 'XYZ Company', '456 Elm St', 'Anycity', 'NY', 'USA', '555-5678', '987-65-4321'),
(3, 'Acme Corporation', '789 Oak St', 'Anystate', 'TX', 'USA', '555-9012', '543-21-6789'),
(4, 'Best Foods', '321 Maple St', 'Anycity', 'FL', 'USA', '555-3456', '876-54-3210'),
(5, 'Global Imports', '654 Pine St', 'Anystate', 'CA', 'USA', '555-7890', '210-98-7654'),
(6, 'Harvest Farms', '987 Cedar St', 'Anycity', 'NY', 'USA', '555-2345', '654-32-1098'),
(7, 'Natures Bounty', '876 Birch St', 'Anystate', 'TX', 'USA', '555-6789', '890-12-3456'),
(8, 'Organic Foods', '543 Cherry St', 'Anytown', 'CA', 'USA', '555-0123', '456-78-9012'),
(9, 'Pure Protein', '210 Walnut St', 'Anycity', 'NY', 'USA', '555-4567', '789-01-2345'),
(10, 'Super Supplements', '999 Chestnut St', 'Anystate', 'FL', 'USA', '555-8901', '321-09-8765');
		
	
INSERT INTO Category (category_id, name, description)
VALUES 
(1, 'Grains', 'Cereal crops that are grown for their edible seeds'),
(2, 'Pulses', 'Edible seeds of plants in the legume family'),
(3, 'Oil Seeds', 'Seeds that are primarily grown for oil extraction'),
(4, 'Flour', 'Ground grains used for baking and cooking'),
(5, 'Others', 'Other food products that do not fit into the above categories');
		
		

INSERT INTO Products (product_id, category_id, name, description, price, weight, ups, inventory_level, supplier_id)
VALUES
(1, 1, 'Wheat', 'A cereal grain used to make flour for bread', 5.99, 2.0, '123456789012', 100, 1),
(2, 2, 'Lentils', 'A type of pulse used in soups and stews', 3.49, 1.5, '234567890123', 75, 2),
(3, 3, 'Soybeans', 'A type of oilseed used to make soybean oil and other products', 10.99, 3.0, '345678901234', 50, 3),
(4, 4, 'All-Purpose Flour', 'A versatile flour used for baking', 2.99, 2.5, '456789012345', 200, 4),
(5, 1, 'Rice', 'A cereal grain used as a staple food', 4.99, 2.0, '567890123456', 150, 5),
(6, 2, 'Chickpeas', 'A type of pulse used in Middle Eastern and Indian cuisine', 4.49, 1.5, '678901234567', 100, 6),
(7, 3, 'Canola Seeds', 'A type of oilseed used to make canola oil', 8.99, 3.0, '789012345678', 50, 7),
(8, 4, 'Bread Flour', 'A high-protein flour used for making bread', 3.49, 2.5, '890123456789', 100, 8),
(9, 1, 'Barley', 'A cereal grain used for brewing and as a food source', 6.99, 2.0, '901234567890', 75, 9),
(10, 5, 'Granola', 'A breakfast food consisting of rolled oats, nuts, and dried fruit', 7.99, 1.0, '012345678901', 100, 10);

INSERT INTO Discounts (discount_id, name, description, discount_amount)
VALUES 
(11,'Regular Price','no discount at this time',0),
(1, 'New Customer Discount', 'Get 10% off your first purchase', 0.1),
(2, 'Holiday Sale', '25% off all items during the month of December', 0.25),
(3, 'Clearance', 'Up to 50% off select items', 0.5),
(4, 'Bulk Discount', 'Buy 10 or more of the same item and get 15% off', 0.15),
(5, 'Membership Discount', '10% off for members', 0.1),
(6, 'Student Discount', '15% off with valid student ID', 0.15),
(7, 'Military Discount', '15% off with valid military ID', 0.15),
(8, 'Senior Discount', '10% off for customers over 65', 0.1),
(9, 'Birthday Discount', '20% off on your birthday', 0.2),
(10, 'Referral Discount', 'Get 10% off for every friend you refer', 0.1);


INSERT INTO Employees (employee_id, user_name, password, name, job_title, contact_info)
VALUES
(1, 'johndoe', 'password123', 'John Doe', 'Manager', '555-1234'),
(2, 'janedoe', 'password456', 'Jane Doe', 'Sales Associate', '555-5678'),
(3, 'bobsmith', 'password789', 'Bob Smith', 'Shipping Coordinator', '555-9012'),
(4, 'sarahjones', 'passwordabc', 'Sarah Jones', 'Customer Service Representative', '555-3456'),
(5, 'mikebrown', 'passworddef', 'Mike Brown', 'IT Specialist', '555-7890');

INSERT INTO Orders (order_id, customer_id, product_id, order_date, quantity, total_amount)
VALUES
(1, 1, 2, '2022-01-01', 3, 10.47),
(2, 2, 5, '2022-01-02', 2, 9.98),
(3, 3, 7, '2022-01-03', 1, 8.99),
(4, 4, 4, '2022-01-04', 4, 11.96),
(5, 5, 1, '2022-01-05', 2, 11.98),
(6, 6, 6, '2022-01-06', 3, 13.47),
(7, 7, 9, '2022-01-07', 1, 6.99),
(8, 8, 8, '2022-01-08', 2, 6.98),
(9, 9, 3, '2022-01-09', 1, 10.99),
(10, 10, 10, '2022-01-10', 1, 7.99);




INSERT INTO Payments (payment_id, order_id, payment_date, payment_amount, payment_method) VALUES
(1, 1, '2022-01-02', 10.47, 'Credit Card'),
(2, 2, '2022-01-03', 9.98, 'PayPal'),
(3, 3, '2022-01-04', 8.99, 'Venmo'),
(4, 4, '2022-01-05', 11.96, 'Cash'),
(5, 5, '2022-01-06', 11.98, 'Credit Card'),
(6, 6, '2022-01-07', 13.47, 'PayPal'),
(7, 7, '2022-01-08', 6.99, 'Venmo'),
(8, 8, '2022-01-09', 6.98, 'Cash'),
(9, 9, '2022-01-10', 10.99, 'Credit Card'),
(10, 10, '2022-01-11', 7.99, 'PayPal');

INSERT INTO Invoices (invoice_id, order_id,invoice_date, due_date, total_amount, discount_amount, tax_amount, paid_amount, payment_status)
VALUES
(1, 1, '2022-01-02', '2022-01-16', 10.47, 0, 0.9443, 10.47, 'Paid'),
(2, 2, '2022-01-03', '2022-01-17', 9.98, 0, 0.8984, 9.98, 'Paid'),
(3, 3,'2022-01-04', '2022-01-18', 8.99, 0, 0.8091, 8.99, 'Paid'),
(4, 4, '2022-01-05', '2022-01-19', 11.96, 0, 1.0764, 11.96, 'Paid'),
(5, 5, '2022-01-06', '2022-01-20', 11.98, 0, 1.0782, 11.98, 'Paid'),
(6, 6,  '2022-01-07', '2022-01-21', 13.47, 0, 1.2123, 13.47, 'Paid'),
(7, 7, '2022-01-08', '2022-01-22', 6.99, 0, 0.6291, 6.99, 'Paid'),
(8, 8,  '2022-01-09', '2022-01-23', 6.98, 0, 0.6282, 6.98, 'Paid'),
(9, 9,  '2022-01-10', '2022-01-24', 10.99, 0, 0.9891, 10.99, 'UnPaid'),
(10, 10, '2022-01-11', '2022-01-25', 7.99, 0, 0.7191, 7.99, 'Paid');
 
INSERT INTO Invoice_Details (
	"invoice_id",
	"payment_id",
	"discount_id")
VALUES
(1,1,11),
( 2, 2,11),
( 3,3,11),
( 4,4,11),
( 5,5,11),
(6, 6,11),
( 7, 7,11),
(8,  8,11),
(9, 9,11),
(10, 10,11);
	
);	

INSERT INTO Sales (sale_id, customer_id, employee_id, date_time, total_amount)
VALUES 
(1, 1, 2, '2022-01-01 10:00:00', 50.0),
(2, 3, 4, '2022-01-02 11:30:00', 75.0),
(3, 2, 3, '2022-01-03 12:45:00', 30.0),
(4, 5, 1, '2022-01-04 14:20:00', 20.0),
(5, 4, 2, '2022-01-05 15:10:00', 45.0),
(6, 6, 1, '2022-01-06 16:30:00', 60.0),
(7, 8, 4, '2022-01-07 17:15:00', 55.0),
(8, 7, 3, '2022-01-08 18:20:00', 40.0),
(9, 10, 2, '2022-01-09 19:40:00', 25.0),
(10, 9, 1, '2022-01-10 20:50:00', 35.0);

