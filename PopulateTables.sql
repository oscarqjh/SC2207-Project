USE TestDB
GO

-- Insert 50 sample rows into the user_account table
INSERT INTO dbo.user_account (gender, dob, name)
VALUES
(0, '1975-03-15', 'John Doe'),
(1, '1982-07-24', 'Jane Smith'),
(0, '1990-11-02', 'Michael Johnson'),
(1, '1988-05-19', 'Emily Brown'),
(0, '1979-09-08', 'David Wilson'),
(1, '1995-12-30', 'Sophia Martinez'),
(0, '1985-04-17', 'Robert Taylor'),
(1, '1993-08-22', 'Emma Anderson'),
(0, '1980-06-11', 'Daniel Thomas'),
(1, '1998-01-05', 'Olivia Garcia'),
(0, '1973-10-28', 'James Jackson'),
(1, '1987-02-14', 'Ava Hernandez'),
(0, '1991-06-03', 'William Davis'),
(1, '1977-11-18', 'Isabella Rodriguez'),
(0, '1983-09-21', 'Benjamin Martinez'),
(1, '1996-04-08', 'Mia Brown'),
(0, '1989-08-07', 'Ethan Wilson'),
(1, '1976-05-25', 'Charlotte Taylor'),
(0, '1994-12-12', 'Alexander Anderson'),
(1, '1981-03-30', 'Amelia Thomas'),
(0, '1978-07-14', 'Jacob Garcia'),
(1, '1992-10-09', 'Harper Hernandez'),
(0, '1984-02-19', 'Michael Davis'),
(1, '1986-09-02', 'Evelyn Rodriguez'),
(0, '1997-06-21', 'Matthew Martinez'),
(1, '1974-11-15', 'Abigail Brown'),
(0, '1988-04-03', 'David Wilson'),
(1, '1995-01-28', 'Sophia Johnson'),
(0, '1979-08-09', 'James Anderson'),
(1, '1983-12-06', 'Olivia Taylor'),
(0, '1991-09-23', 'John Garcia'),
(1, '1977-02-16', 'Emma Hernandez'),
(0, '1985-05-11', 'Daniel Martinez'),
(1, '1999-03-01', 'Ava Davis'),
(0, '1972-07-25', 'William Rodriguez'),
(1, '1980-10-18', 'Isabella Anderson'),
(0, '1993-04-05', 'Benjamin Johnson'),
(1, '1987-01-20', 'Mia Taylor'),
(0, '1981-06-13', 'Ethan Brown'),
(1, '1998-11-29', 'Charlotte Wilson'),
(0, '1976-09-08', 'Alexander Hernandez'),
(1, '1992-02-24', 'Amelia Johnson'),
(0, '1984-05-17', 'Jacob Davis'),
(1, '1978-08-03', 'Harper Taylor'),
(0, '1990-12-20', 'Michael Johnson'),
(1, '1975-04-11', 'Sophia Brown'),
(0, '1982-09-06', 'David Wilson'),
(1, '1994-01-02', 'Emily Martinez');
GO

SELECT * from user_account
GO

-- Insert rows into table 'mall_mgmt_company'
INSERT INTO mall_mgmt_company
( 
 [address]
)
VALUES
( 
 '123 Main St. Suite 100 Los Angeles, CA 90001'
),
( 
 '456 Elm St. Suite 200 New York, NY 10001'
),
( 
 '789 Oak St. Suite 300 Chicago, IL 60601'
),
( 
 '101 Pine St. Suite 400 San Francisco, CA 94101'
),
( 
 '222 Maple St. Suite 500 Houston, TX 77001'
),
( 
 '333 Cedar St. Suite 600 Miami, FL 33101'
),
( 
 '444 Walnut St. Suite 700 Seattle, WA 98101'
),
( 
 '555 Birch St. Suite 800 Atlanta, GA 30301'
),
( 
 '666 Pineapple St. Suite 900 Boston, MA 02101'
),
( 
 '777 Banana St. Suite 1000 Dallas, TX 75201'
);
GO

SELECT * from mall_mgmt_company
GO

-- Insert rows into table 'mall'
INSERT INTO mall
( 
 [address], [num_shops], [mall_mgmt_company_id]
)
VALUES
( 
 '123 Main St. Suite 100 Los Angeles, CA 90001', 100, 1
),
( 
 '456 Elm St. Suite 200 New York, NY 10001', 80, 2
),
( 
 '789 Oak St. Suite 300 Chicago, IL 60601', 120, 3
),
( 
 '101 Pine St. Suite 400 San Francisco, CA 94101', 150, 4
),
( 
 '222 Maple St. Suite 500 Houston, TX 77001', 90, 5
),
( 
 '333 Cedar St. Suite 600 Miami, FL 33101', 110, 6
),
( 
 '444 Walnut St. Suite 700 Seattle, WA 98101', 70, 7
),
( 
 '555 Birch St. Suite 800 Atlanta, GA 30301', 130, 8
),
( 
 '666 Pineapple St. Suite 900 Boston, MA 02101', 100, 9
),
( 
 '777 Banana St. Suite 1000 Dallas, TX 75201', 85, 10
);
GO

SELECT * from mall
GO

-- Insert rows into table 'restaurant_chain'
INSERT INTO restaurant_chain
( 
 [address]
)
VALUES
( 
 '98 Yishun Ave 11, #01-01, Singapore 768865'
),
( 
 '22 Orchard Rd, #B1-00, Singapore 238885'
),
( 
 '1 Jurong East St 21, #B1-17, Singapore 609605'
),
( 
 '3 Temasek Blvd, #B1-152/154, Singapore 038983'
),
( 
 '10 Bayfront Ave, #B2-01, Singapore 018956'
),
( 
 '11 Tanjong Katong Rd, #02-29, Singapore 437157'
),
( 
 '88 Tanglin Halt Rd, #01-10, Singapore 141088'
),
( 
 '40 Pasir Panjang Rd, #02-32, Singapore 117383'
),
( 
 '2 Tampines Central 5, #01-41, Singapore 529509'
),
( 
 '3155 Commonwealth Ave West, #04-43, Singapore 129588'
);
GO

SELECT * from restaurant_chain
GO

-- Insert 50 sample rows into the voucher table
INSERT INTO voucher (description, status, date_issued)
VALUES
('50% off on all items', 'Active', '2024-01-01'),
('Free appetizer with every main course', 'Active', '2024-01-02'),
('Buy one get one free on selected items', 'Active', '2024-01-03'),
('20% discount on total bill', 'Inactive', '2024-01-04'),
('Special discount for loyalty members', 'Active', '2024-01-05'),
('Limited time offer: 30% off on weekends', 'Active', '2024-01-06'),
('Free delivery on orders over $50', 'Active', '2024-01-07'),
('10% off on first order', 'Inactive', '2024-01-08'),
('Exclusive voucher for VIP customers', 'Active', '2024-01-09'),
('Happy Hour: Buy one get one free on drinks', 'Active', '2024-01-10'),
('20% off on all items', 'Active', '2024-01-11'),
('Free dessert with every main course', 'Active', '2024-01-12'),
('Buy two get one free on selected items', 'Active', '2024-01-13'),
('25% discount on total bill', 'Inactive', '2024-01-14'),
('Special discount for new customers', 'Active', '2024-01-15'),
('Limited time offer: 40% off on weekends', 'Active', '2024-01-16'),
('Free shipping on orders over $100', 'Active', '2024-01-17'),
('15% off on first order', 'Inactive', '2024-01-18'),
('Exclusive voucher for premium customers', 'Active', '2024-01-19'),
('Happy Hour: 20% off on drinks', 'Active', '2024-01-20'),
('30% off on all items', 'Active', '2024-01-21'),
('Free starter with every main course', 'Active', '2024-01-22'),
('Buy three get one free on selected items', 'Active', '2024-01-23'),
('30% discount on total bill', 'Inactive', '2024-01-24'),
('Special discount for frequent customers', 'Active', '2024-01-25'),
('Limited time offer: 50% off on weekends', 'Active', '2024-01-26'),
('Free express shipping on orders over $150', 'Active', '2024-01-27'),
('20% off on first order', 'Inactive', '2024-01-28'),
('Exclusive voucher for elite customers', 'Active', '2024-01-29'),
('Happy Hour: Buy one get one half off on drinks', 'Active', '2024-01-30'),
('40% off on all items', 'Active', '2024-02-01'),
('Free side dish with every main course', 'Active', '2024-02-02'),
('Buy one get two free on selected items', 'Active', '2024-02-03'),
('35% discount on total bill', 'Inactive', '2024-02-04'),
('Special discount for valued customers', 'Active', '2024-02-05'),
('Limited time offer: 60% off on weekends', 'Active', '2024-02-06'),
('Free premium shipping on orders over $200', 'Active', '2024-02-07'),
('25% off on first order', 'Inactive', '2024-02-08'),
('Exclusive voucher for platinum customers', 'Active', '2024-02-09'),
('Happy Hour: 30% off on drinks', 'Active', '2024-02-10'),
('50% off on all items', 'Active', '2024-02-11'),
('Free dessert with every main course', 'Active', '2024-02-12'),
('Buy two get one free on selected items', 'Active', '2024-02-13'),
('25% discount on total bill', 'Inactive', '2024-02-14'),
('Special discount for new customers', 'Active', '2024-02-15'),
('Limited time offer: 40% off on weekends', 'Active', '2024-02-16'),
('Free shipping on orders over $100', 'Active', '2024-02-17'),
('15% off on first order', 'Inactive', '2024-02-18'),
('Exclusive voucher for premium customers', 'Active', '2024-02-19'),
('Happy Hour: 20% off on drinks', 'Active', '2024-02-20');
GO

SELECT * from voucher
GO

-- Insert 10 sample rows into the purchase_voucher table
INSERT INTO purchase_voucher (voucher_id, purchase_discount, date_time, user_account_id)
VALUES
(1, 10, '2024-04-01 10:15:00', 1),
(2, 15, '2024-04-02 11:30:00', 2),
(3, 20, '2024-04-03 12:45:00', 3),
(4, 25, '2024-04-04 13:00:00', 4),
(5, 30, '2024-04-05 14:15:00', 5),
(6, 35, '2024-04-06 15:30:00', 6),
(7, 40, '2024-04-07 16:45:00', 7),
(8, 45, '2024-04-08 17:00:00', 8),
(9, 50, '2024-04-09 18:15:00', 9),
(10, 55, '2024-04-10 19:30:00', 10);
GO

SELECT * from purchase_voucher
GO

-- Insert 10 sample rows into the dine_voucher table
INSERT INTO dine_voucher (voucher_id, cash_discount, date_time, user_account_id)
VALUES
(11, 20.00, '2024-04-01 12:00:00', 11),
(12, 25.00, '2024-04-02 13:00:00', 12),
(13, 30.00, '2024-04-03 14:00:00', 13),
(14, 35.00, '2024-04-04 15:00:00', 14),
(15, 40.00, '2024-04-05 16:00:00', 15),
(16, 45.00, '2024-04-06 17:00:00', 16),
(17, 50.00, '2024-04-07 18:00:00', 17),
(18, 55.00, '2024-04-08 19:00:00', 18),
(19, 60.00, '2024-04-09 20:00:00', 19),
(20, 65.00, '2024-04-10 21:00:00', 20);


SELECT * from dine_voucher
GO

-- Insert 10 sample rows into the package_voucher table
INSERT INTO package_voucher (voucher_id, package_discount)
VALUES
(21, 10),
(22, 15),
(23, 20),
(24, 25),
(25, 30),
(26, 35),
(27, 40),
(28, 45),
(29, 50),
(30, 55);

SELECT * from package_voucher
GO

-- Insert 20 sample rows into the group_voucher table
INSERT INTO group_voucher (voucher_id, group_size, group_discount, date_time, user_account_id)
VALUES
(31, 5, 10, '2024-04-01 12:00:00', 31),
(32, 10, 15, '2024-04-02 13:00:00', 32),
(33, 15, 20, '2024-04-03 14:00:00', 33),
(34, 20, 25, '2024-04-04 15:00:00', 34),
(35, 25, 30, '2024-04-05 16:00:00', 35),
(36, 30, 35, '2024-04-06 17:00:00', 36),
(37, 35, 40, '2024-04-07 18:00:00', 37),
(38, 40, 45, '2024-04-08 19:00:00', 38),
(39, 45, 50, '2024-04-09 20:00:00', 39),
(40, 50, 55, '2024-04-10 21:00:00', 40),
(41, 5, 10, '2024-04-01 12:00:00', 41),
(42, 10, 15, '2024-04-02 13:00:00', 42),
(43, 15, 20, '2024-04-03 14:00:00', 43),
(44, 20, 25, '2024-04-04 15:00:00', 44),
(45, 25, 30, '2024-04-05 16:00:00', 45),
(46, 30, 35, '2024-04-06 17:00:00', 46),
(47, 35, 40, '2024-04-07 18:00:00', 47),
(48, 40, 45, '2024-04-08 19:00:00', 48);
GO

SELECT * from group_voucher
GO

-- Insert 20 sample rows into the complaint table
INSERT INTO complaint (text, status, filed_date_time, user_account_id)
VALUES
('Slow service', 'Pending', '2024-04-01 12:00:00', 1),
('Incorrect order delivered', 'Pending', '2024-04-02 13:00:00', 2),
('Rude staff behavior', 'Pending', '2024-04-03 14:00:00', 3),
('Food quality was poor', 'Pending', '2024-04-04 15:00:00', 4),
('Unhygienic conditions', 'Pending', '2024-04-05 16:00:00', 5),
('Long waiting time', 'Pending', '2024-04-06 17:00:00', 6),
('Billing discrepancy', 'Pending', '2024-04-07 18:00:00', 7),
('Table not clean', 'Pending', '2024-04-08 19:00:00', 8),
('Noisy environment', 'Pending', '2024-04-09 20:00:00', 9),
('Unresponsive staff', 'Pending', '2024-04-10 21:00:00', 10),
('Late delivery', 'Pending', '2024-04-11 22:00:00', 11),
('Damaged items received', 'Pending', '2024-04-12 23:00:00', 12),
('Overcharged', 'Pending', '2024-04-13 14:00:00', 13),
('Inaccurate product description', 'Pending', '2024-04-14 15:00:00', 14),
('Unprofessional behavior', 'Pending', '2024-04-15 16:00:00', 15),
('Item out of stock after ordering', 'Pending', '2024-04-16 17:00:00', 16),
('Unclean restroom', 'Pending', '2024-04-17 18:00:00', 17),
('Poor customer service', 'Pending', '2024-04-18 19:00:00', 18),
('Delayed response from support', 'Pending', '2024-04-19 20:00:00', 19),
('Wrong item received', 'Pending', '2024-04-20 21:00:00', 20);
GO

SELECT * from complaint
GO

-- Insert 10 sample rows into the shop table
INSERT INTO shop (type, mall_id)
VALUES
('Clothing', 1),
('Electronics', 2),
('Jewelry', 3),
('Books', 4),
('Grocery', 5),
('Sporting Goods', 6),
('Cosmetics', 7),
('Home Decor', 8),
('Shoes', 9),
('Toys', 10);
GO

SELECT * from shop
GO

-- Insert 10 sample rows into the restaurant_outlet table
INSERT INTO restaurant_outlet (restaurant_outlet_id, mall_id, restaurant_chain_id)
VALUES
(1, 1, 1),
(2, 1, 2),
(3, 2, 3),
(4, 2, 4),
(5, 3, 5),
(6, 3, 6),
(7, 4, 7),
(8, 4, 8),
(9, 5, 9),
(10, 5, 10),
(11, 6, 1),
(12, 6, 2),
(13, 7, 3),
(14, 7, 4),
(15, 8, 5),
(16, 8, 6),
(17, 9, 7),
(18, 9, 8),
(19, 10, 9),
(20, 10, 10);
GO

SELECT * from restaurant_outlet
GO

-- Insert 10 sample rows into the day_package table
INSERT INTO day_package (description, user_account_id, package_voucher_id)
VALUES
('Relaxation package', 1, 21),
('Adventure package', 2, 22),
('Cultural package', 3, 23),
('Wellness package', 4, 24),
('Family package', 5, 25),
('Nature package', 6, 26),
('Foodie package', 7, 27),
('Romantic package', 8, 28),
('Thrill-seeker package', 9, 29),
('Learning package', 10, 30);
GO

SELECT * from day_package
GO

-- Insert 10 sample rows into the complaints_on_shop table
INSERT INTO complaints_on_shop (complaint_id, shop_id)
VALUES
(1, 1),
(2, 2),
(3, 3),
(4, 4),
(5, 5),
(6, 6),
(7, 7),
(8, 8),
(9, 9),
(10, 10);
GO

SELECT * from complaints_on_shop
GO

-- Insert 10 sample rows into the complaints_on_restaurant table
INSERT INTO complaints_on_restaurant (complaint_id, restaurant_outlet_id)
VALUES
(11, 1),
(12, 2),
(13, 3),
(14, 4),
(15, 5),
(16, 6),
(17, 7),
(18, 8),
(19, 9),
(20, 10);
GO

SELECT * from complaints_on_restaurant
GO

-- Insert 10 sample rows into the shop_record table
INSERT INTO shop_record (user_account_id, shop_id, date_time_in, amount_spent, date_time_out)
VALUES
(1, 1, '2024-04-01 10:00:00', 50.00, '2024-04-01 12:00:00'),
(2, 2, '2024-04-02 11:00:00', 75.00, '2024-04-02 13:00:00'),
(3, 3, '2024-04-03 12:00:00', 100.00, '2024-04-03 14:00:00'),
(4, 4, '2024-04-04 13:00:00', 125.00, '2024-04-04 15:00:00'),
(5, 5, '2024-04-05 14:00:00', 150.00, '2024-04-05 16:00:00'),
(6, 6, '2024-04-06 15:00:00', 175.00, '2024-04-06 17:00:00'),
(7, 7, '2024-04-07 16:00:00', 200.00, '2024-04-07 18:00:00'),
(8, 8, '2024-04-08 17:00:00', 225.00, '2024-04-08 19:00:00'),
(9, 9, '2024-04-09 18:00:00', 250.00, '2024-04-09 20:00:00'),
(10, 10, '2024-04-10 19:00:00', 275.00, '2024-04-10 21:00:00'),
(11, 1, '2024-04-01 12:00:00', 50.00, '2024-04-01 14:00:00'),
(12, 2, '2024-04-02 13:00:00', 75.00, '2024-04-02 15:00:00'),
(13, 3, '2024-04-03 14:00:00', 100.00, '2024-04-03 16:00:00'),
(14, 4, '2024-04-04 15:00:00', 125.00, '2024-04-04 17:00:00'),
(15, 5, '2024-04-05 16:00:00', 150.00, '2024-04-05 18:00:00'),
(16, 4, '2024-04-06 17:00:00', 175.00, '2024-04-06 19:00:00'),
(17, 7, '2024-04-07 18:00:00', 200.00, '2024-04-07 20:00:00'),
(18, 2, '2024-04-08 19:00:00', 225.00, '2024-04-08 21:00:00'),
(19, 9, '2024-04-09 20:00:00', 250.00, '2024-04-09 22:00:00'),
(20, 9, '2023-12-10 21:00:00', 275.00, '2023-12-10 23:00:00'),
(20, 1, '2023-12-01 12:00:00', 50.00, '2023-12-01 14:00:00'),
(20, 2, '2023-12-02 13:00:00', 75.00, '2023-12-02 15:00:00'),
(20, 3, '2023-12-03 14:00:00', 100.00, '2023-12-03 16:00:00'),
(20, 4, '2023-12-04 15:00:00', 125.00, '2023-12-04 17:00:00'),
(20, 5, '2023-12-05 16:00:00', 150.00, '2023-12-05 18:00:00'),
(20, 4, '2023-12-06 17:00:00', 175.00, '2023-12-06 19:00:00'),
(20, 7, '2023-12-07 18:00:00', 200.00, '2023-12-07 20:00:00'),
(20, 2, '2023-12-08 19:00:00', 225.00, '2023-12-08 21:00:00'),
(20, 9, '2023-12-09 20:00:00', 250.00, '2023-12-09 22:00:00'),
(30, 9, '2023-12-10 21:00:00', 275.00, '2023-12-10 23:00:00'),
(30, 1, '2023-12-01 12:00:00', 50.00, '2023-12-01 14:00:00'),
(30, 2, '2023-12-02 13:00:00', 75.00, '2023-12-02 15:00:00'),
(30, 3, '2023-12-03 14:00:00', 100.00, '2023-12-03 16:00:00'),
(30, 4, '2023-12-04 15:00:00', 125.00, '2023-12-04 17:00:00'),
(30, 5, '2023-12-05 16:00:00', 150.00, '2023-12-05 18:00:00'),
(30, 4, '2023-12-06 17:00:00', 175.00, '2023-12-06 19:00:00'),
(37, 7, '2023-12-07 18:00:00', 200.00, '2023-12-07 20:00:00'),
(38, 2, '2023-12-08 19:00:00', 225.00, '2023-12-08 21:00:00'),
(39, 9, '2023-12-09 20:00:00', 250.00, '2023-12-09 22:00:00'),
(40, 9, '2023-12-10 21:00:00', 275.00, '2023-12-10 23:00:00');
GO

SELECT * from shop_record
GO

-- Insert 10 sample rows into the dine_record table
INSERT INTO dine_record (user_account_id, restaurant_outlet_id, date_time_in, amount_spent, date_time_out)
VALUES
(1, 1, '2024-04-01 12:00:00', 50.00, '2024-04-01 14:00:00'),
(1, 2, '2024-04-02 13:00:00', 75.00, '2024-04-02 15:00:00'),
(1, 3, '2024-04-03 14:00:00', 100.00, '2024-04-03 16:00:00'),
(1, 4, '2024-04-04 15:00:00', 125.00, '2024-04-04 17:00:00'),
(1, 5, '2024-04-05 16:00:00', 150.00, '2024-04-05 18:00:00'),
(1, 6, '2024-04-06 17:00:00', 175.00, '2024-04-06 19:00:00'),
(1, 7, '2024-04-07 18:00:00', 200.00, '2024-04-07 20:00:00'),
(1, 8, '2024-04-08 19:00:00', 225.00, '2024-04-08 21:00:00'),
(1, 9, '2024-04-09 20:00:00', 250.00, '2024-04-09 22:00:00'),
(1, 10, '2024-04-10 21:00:00', 275.00, '2024-04-10 23:00:00'),
(1, 11, '2024-04-01 12:00:00', 50.00, '2024-04-01 14:00:00'),
(1, 12, '2024-04-02 13:00:00', 75.00, '2024-04-02 15:00:00'),
(1, 13, '2024-04-03 14:00:00', 100.00, '2024-04-03 16:00:00'),
(1, 14, '2024-04-04 15:00:00', 125.00, '2024-04-04 17:00:00'),
(1, 15, '2024-04-05 16:00:00', 150.00, '2024-04-05 18:00:00'),
(1, 16, '2024-04-06 17:00:00', 175.00, '2024-04-06 19:00:00'),
(1, 17, '2024-04-07 18:00:00', 200.00, '2024-04-07 20:00:00'),
(1, 18, '2024-04-08 19:00:00', 225.00, '2024-04-08 21:00:00'),
(1, 19, '2024-04-09 20:00:00', 250.00, '2024-04-09 22:00:00'),
(1, 20, '2024-04-10 21:00:00', 275.00, '2024-04-10 23:00:00'),
(2, 1, '2024-04-10 21:00:00', 275.00, '2024-04-10 23:00:00'),
(2, 2, '2024-04-02 13:00:00', 75.00, '2024-04-02 15:00:00'),
(3, 3, '2024-04-03 14:00:00', 100.00, '2024-04-03 16:00:00'),
(4, 4, '2024-04-04 15:00:00', 125.00, '2024-04-04 17:00:00'),
(5, 5, '2024-04-05 16:00:00', 150.00, '2024-04-05 18:00:00'),
(6, 6, '2024-04-06 17:00:00', 175.00, '2024-04-06 19:00:00'),
(7, 7, '2024-04-07 18:00:00', 200.00, '2024-04-07 20:00:00'),
(8, 8, '2024-04-08 19:00:00', 225.00, '2024-04-08 21:00:00'),
(9, 9, '2024-04-09 20:00:00', 250.00, '2024-04-09 22:00:00'),
(10, 1, '2024-04-10 21:00:00', 275.00, '2024-04-10 23:00:00'),
(11, 1, '2024-04-01 12:00:00', 50.00, '2024-04-01 14:00:00'),
(12, 2, '2024-04-02 13:00:00', 75.00, '2024-04-02 15:00:00'),
(13, 3, '2024-04-03 14:00:00', 100.00, '2024-04-03 16:00:00'),
(14, 4, '2024-04-04 15:00:00', 125.00, '2024-04-04 17:00:00'),
(15, 5, '2024-04-05 16:00:00', 150.00, '2024-04-05 18:00:00'),
(16, 4, '2024-04-06 17:00:00', 175.00, '2024-04-06 19:00:00'),
(17, 7, '2024-04-07 18:00:00', 200.00, '2024-04-07 20:00:00'),
(18, 2, '2024-04-08 19:00:00', 225.00, '2024-04-08 21:00:00'),
(19, 9, '2024-04-09 20:00:00', 250.00, '2024-04-09 22:00:00'),
(20, 9, '2024-04-10 21:00:00', 275.00, '2024-04-10 23:00:00'),
(21, 1, '2023-12-01 12:00:00', 50.00, '2023-12-01 14:00:00'),
(21, 2, '2023-12-02 13:00:00', 75.00, '2023-12-02 15:00:00'),
(21, 3, '2023-12-03 14:00:00', 100.00, '2023-12-03 16:00:00'),
(21, 4, '2023-12-04 15:00:00', 125.00, '2023-12-04 17:00:00'),
(20, 5, '2023-12-11 16:00:00', 150.00, '2023-12-11 18:00:00'),
(20, 4, '2023-12-12 17:00:00', 175.00, '2023-12-12 19:00:00'),
(20, 7, '2023-12-17 18:00:00', 200.00, '2023-12-17 20:00:00'),
(20, 2, '2023-12-18 19:00:00', 225.00, '2023-12-18 21:00:00'),
(20, 9, '2023-12-19 20:00:00', 250.00, '2023-12-19 22:00:00'),
(30, 9, '2023-12-20 21:00:00', 275.00, '2023-12-20 23:00:00');
GO

SELECT * from dine_record
GO

-- Insert 10 sample rows into the user_relationship table
INSERT INTO user_relationship (user_account_id1, user_account_id2, type)
VALUES
(1, 2, 'Family'),
(1, 3, 'Family'),
(2, 3, 'Family'),
(4, 5, 'Family'),
(4, 6, 'Family'),
(4, 7, 'Family'),
(5, 6, 'Family'),
(5, 7, 'Family'),
(6, 7, 'Family'),
(8, 9, 'Family'),
(8, 10, 'Family'),
(9, 10, 'Family'),
(11, 12, 'Friend'),
(11, 13, 'Friend'),
(12, 13, 'Friend'),
(14, 15, 'Friend'),
(16, 17, 'Colleague'),
(16, 18, 'Colleague'),
(17, 18, 'Colleague'),
(19, 20, 'Colleague'),
(19, 21, 'Colleague'),
(20, 21, 'Colleague');

GO

SELECT * from user_relationship
GO

-- Insert 10 sample rows into the recommendation table
INSERT INTO recommendation (valid_period, date_issued, user_account_id, mall_id, restaurant_outlet_id, day_package_id, voucher_id)
VALUES
(30, '2024-04-01', 1, 1, 1, 1, 11),
(30, '2024-04-02', 2, 2, 2, 2, 12),
(30, '2024-04-03', 3, 3, 3, 3, 13),
(30, '2024-04-04', 4, 4, 4, 4, 14),
(30, '2024-04-05', 5, 5, 5, 5, 15),
(30, '2024-04-06', 6, 6, 6, 6, 16),
(30, '2024-04-07', 7, 7, 7, 7, 17),
(30, '2024-04-08', 8, 8, 8, 8, 18),
(30, '2024-04-09', 9, 9, 9, 9, 19),
(30, '2024-04-10', 10, 10, 10, 10, 20),
(30, '2024-04-11', 11, 1, 1, 1, 21),
(30, '2024-04-12', 12, 1, 2, 2, 22),
(30, '2024-04-13', 13, 2, 3, 3, 23),
(30, '2024-04-14', 14, 2, 4, 4, 24),
(30, '2024-04-15', 15, 2, 5, 5, 25),
(30, '2024-04-16', 16, 6, 6, 6, 26),
(30, '2024-04-17', 17, 7, 7, 7, 27),
(30, '2024-04-18', 18, 8, 8, 8, 28),
(30, '2024-04-19', 19, 9, 9, 9, 29),
(30, '2024-04-20', 20, 10, 10, 10, 30);
GO

SELECT * from recommendation
GO

-- Insert 10 sample rows into the user_use_recommendation table
INSERT INTO user_use_recommendation (user_account_id, recommendation_id)
VALUES
(1, 1),
(2, 2),
(3, 3),
(4, 4),
(5, 5),
(6, 6),
(7, 7),
(8, 8),
(9, 9),
(10, 1),
(11, 1),
(12, 1),
(13, 3),
(14, 14),
(15, 5),
(16, 16),
(17, 7),
(18, 7),
(19, 19),
(20, 20);
GO

SELECT * from user_use_recommendation
GO

-- Insert 10 sample rows into the restaurant_outlet_has_day_package table
INSERT INTO dbo.restaurant_outlet_has_day_package (day_package_id, restaurant_outlet_id)
VALUES
(1, 1),
(2, 2),
(3, 3),
(4, 4),
(5, 5),
(6, 6),
(7, 7),
(8, 8),
(9, 9),
(10, 10);
GO

SELECT * from restaurant_outlet_has_day_package
GO

-- Insert 10 sample rows into the mall_has_day_package table
INSERT INTO dbo.mall_has_day_package (day_package_id, mall_id)
VALUES
(1, 1),
(2, 2),
(3, 3),
(4, 4),
(5, 5),
(6, 6),
(7, 7),
(8, 8),
(9, 9),
(10, 10);
GO

SELECT * from mall_has_day_package
GO