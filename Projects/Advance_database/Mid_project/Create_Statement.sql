-- create the Customers table
CREATE TABLE "Customers" (
	"customer_id"	NUMERIC,
	"name"	TEXT NOT NULL,
	"address"	TEXT NOT NULL,
	"contact_number"	TEXT NOT NULL UNIQUE,
	"email"	TEXT NOT NULL UNIQUE,
	PRIMARY KEY("customer_id")
);

-- create the Products table
CREATE TABLE "Products" (
	"product_id"	INTEGER,
	"category_id"	INTEGER NOT NULL,
	"name"	TEXT NOT NULL,
	"description"	TEXT,
	"price"	REAL NOT NULL,
	"weight"	REAL NOT NULL CHECK(weight >0),
	"ups"	TEXT NOT NULL,
	"inventory_level"	NUMERIC NOT NULL CHECK("inventory_level" >= 0),
	"supplier_id"	INTEGER NOT NULL,
	PRIMARY KEY("product_id"),
	FOREIGN KEY("category_id") REFERENCES "Category"("category_id"),
	FOREIGN KEY("supplier_id") REFERENCES "Suppliers"("supplier_id")
);

-- create the Orders table
CREATE TABLE "Orders" (
	"order_id"	NUMERIC,
	"customer_id"	INTEGER NOT NULL,
	"product_id"	INTEGER NOT NULL,
	"order_date"	TEXT NOT NULL,
	"quantity"	INTEGER NOT NULL CHECK("quantity" >= 0),
	"total_amount"	REAL NOT NULL CHECK(total_amount >=0),
	FOREIGN KEY("customer_id") REFERENCES "Customers"("customer_id"),
	FOREIGN KEY("product_id") REFERENCES "Products"("product_id"),
	PRIMARY KEY("order_id")
);

-- create the Invoices table
CREATE TABLE "Invoices" (
	"invoice_id"	INTEGER,
	"order_id"	INTEGER NOT NULL,
	"invoice_date"	DATE NOT NULL,
	"due_date"	DATE,
	"total_amount"	REAL NOT NULL CHECK(total_amount >=0 ),
	"discount_amount"	REAL NOT NULL CHECK(discount_amount >=0),
	"tax_amount"	REAL NOT NULL CHECK(tax_amount >= 0),
	"paid_amount"	REAL NOT NULL CHECK(paid_amount >= 0),
	"payment_status"	TEXT NOT NULL,
	FOREIGN KEY("order_id") REFERENCES "Orders"("order_id"),
	PRIMARY KEY("invoice_id")
);

CREATE TABLE "Invoice_Details" (
	"invoice_id"	INTEGER,
	"payment_id"	INTEGER NOT NULL,
	"discount_id"	INTEGER NOT NULL,
	PRIMARY KEY("invoice_id"),
	FOREIGN KEY("payment_id") REFERENCES "Payments"("payment_id"),
	FOREIGN KEY("discount_id") REFERENCES "Discounts"("discount_id"),
	FOREIGN KEY("invoice_id") REFERENCES "Invoices"("invoice_id")
);

-- create the Payments table
CREATE TABLE "Payments" (
	"payment_id"	INTEGER,
	"order_id"	INTEGER NOT NULL,
	"payment_date"	DATE NOT NULL,
	"payment_amount"	REAL NOT NULL CHECK(payment_amount >=0),
	"payment_method"	TEXT NOT NULL,
	FOREIGN KEY("order_id") REFERENCES "Orders"("order_id"),
	PRIMARY KEY("payment_id")
);

-- create the Employees table
CREATE TABLE "Employees" (
	"employee_id"	INTEGER,
	"user_name"	TEXT NOT NULL UNIQUE,
	"password"	TEXT NOT NULL,
	"name"	TEXT NOT NULL,
	"job_title"	TEXT NOT NULL,
	"contact_info"	TEXT NOT NULL UNIQUE,
	PRIMARY KEY("employee_id")
);

-- create the Sales table
CREATE TABLE Sales (
    sale_id INTEGER PRIMARY KEY,
    customer_id INTEGER NOT NULL,
    employee_id INTEGER NOT NULL,
    date_time TEXT NOT NULL,
    total_amount REAL NOT NULL,
    FOREIGN KEY (customer_id) REFERENCES Customers(customer_id),
    FOREIGN KEY (employee_id) REFERENCES Employees(employee_id)
);

-- create the Category table
CREATE TABLE Category (
    category_id INTEGER PRIMARY KEY,
    name TEXT NOT NULL,
    description TEXT
);

-- create the Suppliers table
CREATE TABLE "Suppliers" (
	"supplier_id"	INTEGER,
	"name"	TEXT NOT NULL,
	"address"	TEXT NOT NULL,
	"city"	TEXT NOT NULL,
	"state"	TEXT NOT NULL,
	"country"	TEXT NOT NULL,
	"contact_info"	TEXT NOT NULL UNIQUE,
	"TIN_number"	TEXT NOT NULL UNIQUE,
	PRIMARY KEY("supplier_id")
);

CREATE TABLE Discounts (
    discount_id INTEGER PRIMARY KEY,
    name TEXT NOT NULL,
    description TEXT,
    discount_amount REAL NOT NULL
);



