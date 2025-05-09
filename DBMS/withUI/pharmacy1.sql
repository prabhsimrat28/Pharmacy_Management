-- Step 1: Create the database
create database pharmacy1;

-- Step 2: Use the newly created database
USE pharmacy1;

-- Step 3: Create Users Table
CREATE TABLE users (
    id INT AUTO_INCREMENT PRIMARY KEY,
    username VARCHAR(50) UNIQUE,
    password VARCHAR(100)
);

-- Step 4: Create Medicines Table
CREATE TABLE medicines (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100),
    batch_no VARCHAR(50),
    expiry_date DATE,
    price DECIMAL(10, 2),
    quantity INT
);
-- Create Customer Table
CREATE TABLE customer (
    customer_id INT AUTO_INCREMENT PRIMARY KEY,
    gender VARCHAR(10),
    customer_bills INT DEFAULT 0,
    total_order_amount DECIMAL(10, 2) DEFAULT 0.00
);

-- Create Bill Table
CREATE TABLE bill (
    bill_id INT AUTO_INCREMENT PRIMARY KEY,
    bill_amount DECIMAL(10,2),
    bill_date DATE,
    bill_items TEXT,
    customer_id INT,
    FOREIGN KEY (customer_id) REFERENCES customer(customer_id)
);-- Step 5: Insert sample data into Users Table

-- Step 6: Insert sample data into Medicines Table
INSERT INTO medicines (name, batch_no, expiry_date, price, quantity) 
VALUES 
('Paracetamol', 'B123', '2025-12-31', 50.00, 100),
('Ibuprofen', 'B124', '2025-11-30', 75.00, 50),
('Amoxicillin', 'B125', '2026-05-20', 120.00, 30);

-- Step 7: Insert 10 more sample medicines into the Medicines Table
INSERT INTO medicines (name, batch_no, expiry_date, price, quantity) 
VALUES 
('Cough Syrup', 'B126', '2026-03-15', 40.00, 75),
('Aspirin', 'B127', '2025-08-10', 60.00, 120),
('Antacid', 'B128', '2025-05-20', 30.00, 150),
('Vitamin C', 'B129', '2026-01-01', 15.00, 200),
('Antibiotic Cream', 'B130', '2025-09-30', 90.00, 50),
('Insulin', 'B131', '2026-04-22', 150.00, 20),
('Antihistamine', 'B132', '2025-07-25', 25.00, 180),
('Pain Reliever Gel', 'B133', '2026-06-12', 100.00, 60),
('Cough Lozenges', 'B134', '2025-11-11', 12.00, 250),
('Eye Drops', 'B135', '2026-02-05', 45.00, 100);



-- Step 8: Test the database by querying the data
SELECT * FROM users;
SELECT * FROM medicines;