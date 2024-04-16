USE TestDB
GO

-- Insert 50 sample rows into the user_account table
INSERT INTO dbo.user_account
    (gender, dob, name)
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
(0, '1984-06-13', 'Ethan Brown'),
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

SELECT *
from mall_mgmt_company
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

SELECT *
from mall
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

SELECT *
from restaurant_chain
GO

-- Insert 50 sample rows into the voucher table
INSERT INTO voucher
    (description, status, date_issued)
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

SELECT *
from voucher
GO

-- Insert 10 sample rows into the purchase_voucher table
INSERT INTO purchase_voucher
    (voucher_id, purchase_discount, date_time, user_account_id)
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

SELECT *
from purchase_voucher
GO

-- Insert 10 sample rows into the dine_voucher table
INSERT INTO dine_voucher
    (voucher_id, cash_discount, date_time, user_account_id)
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


SELECT *
from dine_voucher
GO

-- Insert 10 sample rows into the package_voucher table
INSERT INTO package_voucher
    (voucher_id, package_discount)
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

SELECT *
from package_voucher
GO

-- Insert 20 sample rows into the group_voucher table
INSERT INTO group_voucher
    (voucher_id, group_size, group_discount, date_time, user_account_id)
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

SELECT *
from group_voucher
GO

-- Insert 20 sample rows into the complaint table
INSERT INTO complaint
    (text, status, filed_date_time, user_account_id)
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

SELECT *
from complaint
GO

-- Insert 10 sample rows into the shop table
INSERT INTO shop
    (type, mall_id)
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
('Toys', 10),
('Electronics', 1),
('Jewelry', 2),
('Books', 3),
('Grocery', 4),
('Sporting Goods', 5),
('Cosmetics', 6),
('Home Decor', 7),
('Shoes', 8),
('Toys', 9),
('Clothing', 10),
('Jewelry', 1),
('Books', 2),
('Grocery', 3),
('Sporting Goods', 4),
('Cosmetics', 5),
('Home Decor', 6),
('Shoes', 7),
('Toys', 8),
('Clothing', 9),
('Electronics', 10);
GO

SELECT *
from shop
GO

-- Insert 10 sample rows into the restaurant_outlet table
INSERT INTO restaurant_outlet
    (restaurant_outlet_id, mall_id, restaurant_chain_id)
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

SELECT *
from restaurant_outlet
GO

-- Insert 10 sample rows into the day_package table
INSERT INTO day_package
    (description, user_account_id, package_voucher_id)
VALUES
    ('Foodie package', 1, 28),
    ('Foodie package', 2, 28),
    ('Foodie package', 3, 28),
    ('Foodie package', 4, 28),
    ('Romantic package', 5, 26),
    ('Romantic package', 6, 26),
    ('Romantic package', 7, 26),
    ('Romantic package', 8, 26),
    ('Relaxation package', 9, 28),
    ('Relaxation package', 10, 28),
    ('Relaxation package', 11, 28),
    ('Relaxation package', 12, 28),
    ('Relaxation package', 13, 28),
    ('Relaxation package', 14, 28),
    ('Relaxation package', 15, 28),
    ('Relaxation package', 16, 28),
    ('Wellness package', 17, 23),
    ('Wellness package', 18, 23),
    ('Wellness package', 19, 23),
    ('Wellness package', 20, 23),
    ('Foodie package', 21, 24),
    ('Foodie package', 22, 24),
    ('Foodie package', 23, 24),
    ('Foodie package', 24, 24),
    ('Romantic package', 25, 29),
    ('Romantic package', 26, 29),
    ('Romantic package', 27, 29),
    ('Romantic package', 28, 29),
    ('Relaxation package', 29, 29),
    ('Relaxation package', 30, 29),
    ('Relaxation package', 31, 29),
    ('Relaxation package', 32, 29),
    ('Relaxation package', 33, 22),
    ('Relaxation package', 34, 22),
    ('Relaxation package', 35, 22),
    ('Relaxation package', 36, 22),
    ('Cultural package', 37, 27),
    ('Cultural package', 38, 27),
    ('Cultural package', 39, 27),
    ('Cultural package', 40, 27),
    ('Romantic package', 41, 25),
    ('Romantic package', 42, 25),
    ('Romantic package', 43, 25),
    ('Romantic package', 44, 25),
    ('Foodie package', 45, 23),
    ('Foodie package', 46, 23),
    ('Foodie package', 47, 23),
    ('Foodie package', 48, 23),
    ('Wellness package', 48, 21),
    ('Wellness package', 20, 22),
    ('Wellness package', 13, 23),
    ('Romantic package', 1, 24),
    ('Romantic package', 24, 25),
    ('Adventure package', 10, 26),
    ('Adventure package', 23, 27);
GO

SELECT *
from day_package
GO

-- Insert 10 sample rows into the complaints_on_shop table
INSERT INTO complaints_on_shop
    (complaint_id, shop_id)
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

SELECT *
from complaints_on_shop
GO

-- Insert 10 sample rows into the complaints_on_restaurant table
INSERT INTO complaints_on_restaurant
    (complaint_id, restaurant_outlet_id)
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

SELECT *
from complaints_on_restaurant
GO

-- Insert 10 sample rows into the shop_record table
INSERT INTO shop_record
    (user_account_id, shop_id, date_time_in, amount_spent, date_time_out)
VALUES
    (1, 1, '2024-04-01 10:00:00', 50.00, '2024-04-01 12:00:00'),
    (2, 2, '2024-04-02 11:00:00', 75.00, '2024-04-02 13:00:00'),
    (3, 3, '2024-04-03 12:00:00', 100.00, '2024-04-03 14:00:00'),
    (4, 3, '2024-04-03 12:00:00', 100.00, '2024-04-03 14:00:00'),
    (4, 4, '2024-04-04 13:00:00', 125.00, '2024-04-04 15:00:00'),
    (5, 5, '2024-04-05 14:00:00', 150.00, '2024-04-05 16:00:00'),
    (6, 6, '2024-04-06 15:00:00', 175.00, '2024-04-06 17:00:00'),
    (7, 7, '2024-04-07 16:00:00', 200.00, '2024-04-07 18:00:00'),
    (8, 8, '2024-04-08 17:00:00', 225.00, '2024-04-08 19:00:00'),
    (8, 18, '2023-12-08 12:00:00', 200.00, '2023-12-08 14:00:00'),
    (8, 18, '2023-12-09 13:00:00', 250.00, '2023-12-09 16:00:00'),
    (8, 28, '2023-12-10 15:00:00', 200.00, '2023-12-10 17:00:00'),
    (8, 7, '2023-12-12 17:00:00', 175.00, '2023-12-12 19:00:00'),
    (8, 8, '2023-12-18 16:00:00', 225.00, '2023-12-18 18:00:00'),
    (8, 9, '2023-12-20 15:00:00', 275.00, '2023-12-20 19:00:00'),
    (8, 18, '2023-12-21 17:00:00', 225.00, '2023-12-21 18:00:00'),
    (8, 28, '2023-12-24 16:00:00', 300.00, '2023-12-24 19:00:00'),
    (9, 9, '2024-04-09 18:00:00', 250.00, '2024-04-09 20:00:00'),
    (10, 10, '2024-04-10 19:00:00', 275.00, '2024-04-10 21:00:00'),
    (11, 1, '2024-04-01 12:00:00', 50.00, '2024-04-01 14:00:00'),
    (11, 1, '2023-12-01 13:00:00', 75.00, '2023-12-01 15:00:00'),
    (11, 11, '2023-12-02 13:00:00', 50.00, '2023-12-02 16:00:00'),
    (11, 21, '2023-12-04 14:00:00', 25.00, '2023-12-04 15:00:00'),
    (11, 1, '2023-12-05 15:00:00', 50.00, '2023-12-05 17:00:00'),
    (11, 21, '2023-12-07 17:00:00', 100.00, '2023-12-07 19:00:00'),
    (11, 11, '2023-12-08 17:00:00', 75.00, '2023-12-08 19:00:00'),
    (12, 2, '2024-04-02 13:00:00', 75.00, '2024-04-02 15:00:00'),
    (13, 3, '2024-04-03 14:00:00', 100.00, '2024-04-03 16:00:00'),
    (14, 4, '2024-04-04 15:00:00', 125.00, '2024-04-04 17:00:00'),
    (15, 5, '2024-04-05 16:00:00', 150.00, '2024-04-05 18:00:00'),
    (16, 4, '2024-04-06 17:00:00', 175.00, '2024-04-06 19:00:00'),
    (17, 7, '2024-04-07 18:00:00', 200.00, '2024-04-07 20:00:00'),
    (18, 2, '2024-04-08 19:00:00', 225.00, '2024-04-08 21:00:00'),
    (19, 9, '2024-04-09 20:00:00', 250.00, '2024-04-09 22:00:00'),
    (20, 9, '2023-12-10 21:00:00', 275.00, '2023-12-10 23:00:00'),
    (20, 19, '2023-12-01 12:00:00', 50.00, '2023-12-01 14:00:00'),
    (20, 29, '2023-12-02 13:00:00', 75.00, '2023-12-02 15:00:00'),
    (20, 3, '2023-12-03 14:00:00', 100.00, '2023-12-03 16:00:00'),
    (20, 3, '2023-12-04 15:00:00', 125.00, '2023-12-04 17:00:00'),
    (20, 3, '2023-12-05 16:00:00', 150.00, '2023-12-05 18:00:00'),
    (20, 13, '2023-12-26 16:00:00', 150.00, '2023-12-26 18:00:00'),
    (20, 23, '2023-12-27 16:00:00', 150.00, '2023-12-27 18:00:00'),
    (20, 23, '2023-12-29 16:00:00', 150.00, '2023-12-29 18:00:00'),
    (20, 9, '2023-12-06 17:00:00', 175.00, '2023-12-06 19:00:00'),
    (20, 19, '2023-12-08 19:00:00', 225.00, '2023-12-08 21:00:00'),
    (20, 29, '2023-12-09 20:00:00', 250.00, '2023-12-09 22:00:00'),
    (30, 6, '2023-12-10 21:00:00', 275.00, '2023-12-10 23:00:00'),
    (30, 6, '2023-12-01 12:00:00', 50.00, '2023-12-01 14:00:00'),
    (30, 16, '2023-12-02 13:00:00', 75.00, '2023-12-02 15:00:00'),
    (30, 26, '2023-12-03 14:00:00', 100.00, '2023-12-03 16:00:00'),
    (30, 26, '2023-12-04 15:00:00', 125.00, '2023-12-04 17:00:00'),
    (30, 26, '2023-12-05 16:00:00', 150.00, '2023-12-05 18:00:00'),
    (30, 16, '2023-12-06 17:00:00', 175.00, '2023-12-06 19:00:00'),
    (37, 4, '2023-12-07 18:00:00', 200.00, '2023-12-07 20:00:00'),
    (37, 4, '2023-12-08 18:00:00', 250.00, '2023-12-08 20:00:00'),
    (37, 4, '2023-12-09 18:00:00', 100.00, '2023-12-09 20:00:00'),
    (37, 5, '2023-12-10 18:00:00', 150.00, '2023-12-10 20:00:00'),
    (37, 5, '2023-12-11 18:00:00', 175.00, '2023-12-11 20:00:00'),
    (37, 5, '2023-12-12 18:00:00', 100.00, '2023-12-12 20:00:00'),
    (38, 2, '2023-12-08 19:00:00', 225.00, '2023-12-08 21:00:00'),
    (39, 2, '2023-12-09 20:00:00', 250.00, '2023-12-09 22:00:00'),
    (39, 2, '2023-12-11 10:00:00', 275.00, '2023-12-11 13:00:00'),
    (39, 12, '2023-12-14 14:00:00', 150.00, '2023-12-14 16:00:00'),
    (39, 12, '2023-12-15 14:00:00', 200.00, '2023-12-15 17:00:00'),
    (39, 22, '2023-12-18 19:00:00', 250.00, '2023-12-18 22:00:00'),
    (39, 22, '2023-12-20 16:00:00', 175.00, '2023-12-20 18:00:00'),
    (40, 9, '2023-12-10 21:00:00', 275.00, '2023-12-10 23:00:00'),
    (39, 9, '2023-7-25 17:52:21', 203, '2023-7-25 19:24:21'),
    (40, 9, '2023-7-25 17:52:21', 203, '2023-7-25 19:24:21'),
    (4, 3, '2024-8-7 20:26:36', 115, '2024-8-7 23:47:33'),
    (3, 2, '2023-3-25 8:28:16', 154, '2023-3-25 9:59:28'),
    (4, 2, '2023-3-25 8:28:16', 154, '2023-3-25 9:59:28'),
    (3, 1, '2024-10-4 16:56:32', 271, '2024-10-4 18:7:15'),
    (4, 1, '2024-10-4 16:56:32', 271, '2024-10-4 18:7:15'),
    (3, 2, '2023-8-4 17:6:46', 146, '2023-8-4 18:40:0'),
    (4, 2, '2023-8-4 17:6:46', 146, '2023-8-4 18:40:0'),
    (3, 2, '2024-6-9 11:56:21', 295, '2024-6-9 14:21:2'),
    (4, 2, '2024-6-9 11:56:21', 295, '2024-6-9 14:21:2'),
    (3, 3, '2023-12-26 12:47:40', 282, '2023-12-26 13:39:38'),
    (4, 3, '2023-12-26 12:47:40', 282, '2023-12-26 13:39:38'),
    (3, 7, '2024-12-25 19:24:57', 281, '2024-12-25 20:36:0'),
    (4, 7, '2024-12-25 19:24:57', 281, '2024-12-25 20:36:0'),
    (3, 3, '2023-12-7 13:1:22', 250, '2023-12-7 16:31:21'),
    (4, 3, '2023-12-7 13:1:22', 250, '2023-12-7 16:31:21'),
    (39, 3, '2024-6-17 16:1:39', 150, '2024-6-17 17:47:38'),
    (40, 3, '2024-6-17 16:1:39', 150, '2024-6-17 17:47:38'),
    (39, 7, '2024-8-18 11:39:24', 268, '2024-8-18 14:57:50'),
    (40, 7, '2024-8-18 11:39:24', 268, '2024-8-18 14:57:50'),
    (39, 9, '2023-10-9 19:26:55', 125, '2023-10-9 22:37:38'),
    (40, 9, '2023-10-9 19:26:55', 125, '2023-10-9 22:37:38');
GO

SELECT * from shop_record
GO

-- Insert 10 sample rows into the dine_record table
INSERT INTO dine_record
    (user_account_id, restaurant_outlet_id, date_time_in, amount_spent, date_time_out)
VALUES
    (1, 1, '2024-04-01 12:00:00', 50.00, '2024-04-01 14:00:00'),
    (1, 2, '2024-04-02 13:00:00', 75.00, '2024-04-02 15:00:00'),
    (1, 3, '2024-04-03 14:00:00', 100.00, '2024-04-03 16:00:00'),
    (1, 4, '2024-04-03 14:00:00', 100.00, '2024-04-03 16:00:00'),
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
    (3, 4, '2024-04-03 20:00:00', 100.00, '2024-04-03 21:00:00'),
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
    (30, 9, '2023-12-20 21:00:00', 275.00, '2023-12-20 23:00:00'),
    (3, 6, '2023-9-12 19:28:45', 221, '2023-9-12 22:2:41'),
    (4, 6, '2023-9-12 19:28:45', 221, '2023-9-12 22:2:41'),
    (3, 8, '2024-4-6 7:33:26', 189, '2024-4-6 8:5:35'),
    (4, 8, '2024-4-6 7:33:26', 189, '2024-4-6 8:5:35'),
    (3, 6, '2023-4-1 8:40:51', 299, '2023-4-1 10:12:29'),
    (4, 6, '2023-4-1 8:40:51', 299, '2023-4-1 10:12:29'),
    (3, 8, '2024-3-20 15:39:51', 135, '2024-3-20 16:35:16'),
    (4, 8, '2024-3-20 15:39:51', 135, '2024-3-20 16:35:16'),
    (3, 5, '2023-3-19 7:37:35', 279, '2023-3-19 9:52:12'),
    (4, 5, '2023-3-19 7:37:35', 279, '2023-3-19 9:52:12'),
    (3, 4, '2023-9-12 14:50:5', 171, '2023-9-12 16:33:53'),
    (4, 4, '2023-9-12 14:50:5', 171, '2023-9-12 16:33:53'),
    (3, 4, '2023-10-7 15:52:21', 222, '2023-10-7 17:19:3'),
    (4, 4, '2023-10-7 15:52:21', 222, '2023-10-7 17:19:3'),
    (3, 7, '2024-8-13 11:53:20', 176, '2024-8-13 12:53:52'),
    (4, 7, '2024-8-13 11:53:20', 176, '2024-8-13 12:53:52'),
    (3, 6, '2023-3-5 17:20:56', 246, '2023-3-5 19:7:4'),
    (4, 6, '2023-3-5 17:20:56', 246, '2023-3-5 19:7:4'),
    (3, 1, '2023-1-26 15:17:47', 132, '2023-1-26 18:25:53'),
    (4, 1, '2023-1-26 15:17:47', 132, '2023-1-26 18:25:53'),
    (3, 4, '2023-12-22 10:50:1', 166, '2023-12-22 13:35:47'),
    (4, 4, '2023-12-22 10:50:1', 166, '2023-12-22 13:35:47'),
    (3, 7, '2024-5-27 13:16:17', 209, '2024-5-27 16:2:29'),
    (4, 7, '2024-5-27 13:16:17', 209, '2024-5-27 16:2:29'),
    (3, 7, '2024-8-17 8:59:28', 217, '2024-8-17 11:30:49'),
    (4, 7, '2024-8-17 8:59:28', 217, '2024-8-17 11:30:49'),
    (3, 1, '2024-12-2 9:54:4', 134, '2024-12-2 11:8:7'),
    (39, 4, '2023-1-18 16:54:17', 277, '2023-1-18 18:18:59'),
    (40, 4, '2023-1-18 16:54:17', 277, '2023-1-18 18:18:59'),
    (39, 5, '2024-6-19 11:25:23', 155, '2024-6-19 12:36:24'),
    (40, 5, '2024-6-19 11:25:23', 155, '2024-6-19 12:36:24'),
    (39, 4, '2024-5-9 15:16:31', 235, '2024-5-9 17:8:4'),
    (40, 4, '2024-5-9 15:16:31', 235, '2024-5-9 17:8:4'),
    (39, 2, '2024-1-17 12:27:36', 290, '2024-1-17 13:43:7'),
    (40, 2, '2024-1-17 12:27:36', 290, '2024-1-17 13:43:7'),
    (39, 8, '2024-3-5 19:48:17', 240, '2024-3-5 21:36:32'),
    (40, 8, '2024-3-5 19:48:17', 240, '2024-3-5 21:36:32'),
    (39, 3, '2023-7-10 8:34:41', 215, '2023-7-10 10:0:25'),
    (40, 3, '2023-7-10 8:34:41', 215, '2023-7-10 10:0:25'),
    (4, 1, '2024-12-2 9:54:4', 134, '2024-12-2 11:8:7'),
    (3, 7, '2023-3-28 11:6:50', 165, '2023-3-28 14:28:57'),
    (4, 7, '2023-3-28 11:6:50', 165, '2023-3-28 14:28:57'),
    (3, 7, '2024-8-5 19:25:40', 224, '2024-8-5 21:0:7'),
    (4, 7, '2024-8-5 19:25:40', 224, '2024-8-5 21:0:7'),
    (3, 2, '2024-12-8 12:28:6', 292, '2024-12-8 14:52:59'),
    (4, 2, '2024-12-8 12:28:6', 292, '2024-12-8 14:52:59'),
    (3, 2, '2024-1-19 11:35:55', 270, '2024-1-19 13:23:37'),
    (4, 2, '2024-1-19 11:35:55', 270, '2024-1-19 13:23:37'),
    (3, 9, '2024-8-10 14:19:13', 136, '2024-8-10 15:36:3'),
    (4, 9, '2024-8-10 14:19:13', 136, '2024-8-10 15:36:3'),
    (3, 3, '2024-8-7 20:26:36', 115, '2024-8-7 23:47:33'),
    (3, 9, '2023-6-12 9:52:45', 130, '2023-6-12 12:42:7'),
    (4, 9, '2023-6-12 9:52:45', 130, '2023-6-12 12:42:7'),
    (3, 7, '2024-3-7 10:57:51', 278, '2024-3-7 12:28:28'),
    (4, 7, '2024-3-7 10:57:51', 278, '2024-3-7 12:28:28'),
    (3, 5, '2024-3-12 14:44:51', 100, '2024-3-12 17:20:32'),
    (4, 5, '2024-3-12 14:44:51', 100, '2024-3-12 17:20:32'),
    (37, 2, '2023-4-4 10:33:6', 262, '2023-4-4 12:48:19'),
    (40, 2, '2023-4-4 10:33:6', 262, '2023-4-4 12:48:19'),
    (37, 4, '2023-12-18 20:47:1', 159, '2023-12-18 23:51:50'),
    (40, 4, '2023-12-18 20:47:1', 159, '2023-12-18 23:51:50'),
    (37, 4, '2024-10-28 7:40:32', 201, '2024-10-28 9:24:50'),
    (40, 4, '2024-10-28 7:40:32', 201, '2024-10-28 9:24:50'),
    (37, 9, '2024-9-1 9:45:33', 205, '2024-9-1 11:47:20'),
    (40, 9, '2024-9-1 9:45:33', 205, '2024-9-1 11:47:20'),
    (37, 5, '2023-6-13 18:8:7', 193, '2023-6-13 21:13:13'),
    (40, 5, '2023-6-13 18:8:7', 193, '2023-6-13 21:13:13'),
    (37, 5, '2023-11-13 7:20:11', 110, '2023-11-13 8:1:4'),
    (40, 5, '2023-11-13 7:20:11', 110, '2023-11-13 8:1:4'),
    (37, 8, '2023-9-4 18:22:44', 176, '2023-9-4 20:43:54'),
    (40, 8, '2023-9-4 18:22:44', 176, '2023-9-4 20:43:54'),
    (37, 1, '2023-8-25 7:12:1', 259, '2023-8-25 8:24:26'),
    (40, 1, '2023-8-25 7:12:1', 259, '2023-8-25 8:24:26'),
    (37, 4, '2024-5-25 11:50:59', 289, '2024-5-25 13:49:48'),
    (40, 4, '2024-5-25 11:50:59', 289, '2024-5-25 13:49:48'),
    (37, 5, '2023-6-13 13:59:21', 248, '2023-6-13 16:44:56'),
    (40, 5, '2023-6-13 13:59:21', 248, '2023-6-13 16:44:56'),
    (37, 6, '2024-2-9 10:31:21', 238, '2024-2-9 11:22:41'),
    (40, 6, '2024-2-9 10:31:21', 238, '2024-2-9 11:22:41'),
    (37, 7, '2023-8-4 8:37:14', 167, '2023-8-4 10:24:52'),
    (40, 7, '2023-8-4 8:37:14', 167, '2023-8-4 10:24:52'),
    (37, 3, '2023-11-28 15:45:32', 176, '2023-11-28 16:27:43'),
    (40, 3, '2023-11-28 15:45:32', 176, '2023-11-28 16:27:43'),
    (37, 5, '2023-8-14 13:50:29', 230, '2023-8-14 15:55:40'),
    (40, 5, '2023-8-14 13:50:29', 230, '2023-8-14 15:55:40'),
    (37, 5, '2023-10-23 14:12:47', 269, '2023-10-23 17:55:9'),
    (40, 5, '2023-10-23 14:12:47', 269, '2023-10-23 17:55:9'),
    (37, 3, '2023-9-25 19:50:12', 138, '2023-9-25 21:40:7'),
    (40, 3, '2023-9-25 19:50:12', 138, '2023-9-25 21:40:7'),
    (37, 9, '2023-12-25 18:16:34', 245, '2023-12-25 21:34:0'),
    (40, 9, '2023-12-25 18:16:34', 245, '2023-12-25 21:34:0'),
    (37, 1, '2024-11-8 13:54:6', 119, '2024-11-8 16:8:54'),
    (40, 1, '2024-11-8 13:54:6', 119, '2024-11-8 16:8:54'),
    (37, 1, '2023-9-17 14:14:24', 159, '2023-9-17 15:53:7'),
    (40, 1, '2023-9-17 14:14:24', 159, '2023-9-17 15:53:7'),
    (37, 3, '2023-4-16 20:32:38', 187, '2023-4-16 21:35:52'),
    (40, 3, '2023-4-16 20:32:38', 187, '2023-4-16 21:35:52');
GO

SELECT *
from dine_record
GO

-- Insert 10 sample rows into the user_relationship table
INSERT INTO user_relationship
    (user_account_id1, user_account_id2, type)
VALUES
    (1, 2, 'colleague'),
    (1, 3, 'neighbor'),
    (1, 4, 'friend'),
    (2, 3, 'friend'),
    (2, 4, 'colleague'),
    (3, 4, 'family'),
    (5, 6, 'same club'),
    (5, 7, 'neighbor'),
    (5, 8, 'same club'),
    (6, 7, 'colleague'),
    (6, 8, 'teammate'),
    (7, 8, 'family'),
    (9, 10, 'teammate'),
    (9, 11, 'same club'),
    (9, 12, 'colleague'),
    (10, 11, 'friend'),
    (10, 12, 'family'),
    (11, 12, 'same club'),
    (13, 14, 'colleague'),
    (13, 15, 'neighbor'),
    (13, 16, 'family'),
    (14, 15, 'teammate'),
    (14, 16, 'family'),
    (15, 16, 'same club'),
    (17, 18, 'neighbor'),
    (17, 19, 'colleague'),
    (17, 20, 'neighbor'),
    (18, 19, 'friend'),
    (18, 20, 'family'),
    (19, 20, 'teammate'),
    (21, 22, 'neighbor'),
    (21, 23, 'teammate'),
    (21, 24, 'family'),
    (22, 23, 'same club'),
    (22, 24, 'family'),
    (23, 24, 'friend'),
    (25, 26, 'family'),
    (25, 27, 'neighbor'),
    (25, 28, 'friend'),
    (26, 27, 'colleague'),
    (26, 28, 'colleague'),
    (27, 28, 'family'),
    (29, 30, 'neighbor'),
    (29, 31, 'teammate'),
    (29, 32, 'family'),
    (30, 31, 'teammate'),
    (30, 32, 'same club'),
    (31, 32, 'neighbor'),
    (33, 34, 'same club'),
    (33, 35, 'teammate'),
    (33, 36, 'same club'),
    (34, 35, 'neighbor'),
    (34, 36, 'family'),
    (35, 36, 'same club'),
    (37, 38, 'friend'),
    (37, 39, 'colleague'),
    (37, 40, 'family'),
    (38, 39, 'family'),
    (38, 40, 'neighbor'),
    (39, 40, 'family'),
    (41, 42, 'friend'),
    (41, 43, 'neighbor'),
    (41, 44, 'teammate'),
    (42, 43, 'family'),
    (42, 44, 'same club'),
    (43, 44, 'teammate'),
    (45, 46, 'same club'),
    (45, 47, 'same club'),
    (45, 48, 'teammate'),
    (46, 47, 'family'),
    (46, 48, 'neighbor'),
    (47, 48, 'neighbor');

GO

SELECT *
from user_relationship
GO

-- Insert 10 sample rows into the recommendation table
INSERT INTO recommendation
    (valid_period, date_issued, user_account_id, mall_id, restaurant_outlet_id, day_package_id, voucher_id)
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

SELECT *
from recommendation
GO

-- Insert 10 sample rows into the user_use_recommendation table
INSERT INTO user_use_recommendation
    (user_account_id, recommendation_id)
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

SELECT *
from user_use_recommendation
GO

-- Insert 10 sample rows into the restaurant_outlet_has_day_package table
INSERT INTO dbo.restaurant_outlet_has_day_package
    (day_package_id, restaurant_outlet_id)
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

SELECT *
from restaurant_outlet_has_day_package
GO

-- Insert 10 sample rows into the mall_has_day_package table
INSERT INTO dbo.mall_has_day_package
    (day_package_id, mall_id)
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

SELECT *
from mall_has_day_package
GO

INSERT INTO dbo.user_use_day_package
    (user_account_id, day_package_id, date_time_in)
VALUES
    (3, 1, '2024-04-03 12:00:00'),
    (6, 3, '2024-04-06 17:00:00'),
    (7, 4, '2024-04-07 18:00:00'),
    (8, 5, '2024-04-08 19:00:00'),
    (9, 6, '2024-04-09 20:00:00')
GO

SELECT *
from user_use_day_package
GO
