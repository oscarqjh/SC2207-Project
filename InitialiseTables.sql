-- Drop the database 'TestDB'
-- Connect to the 'master' database to run this snippet
USE master
GO
-- Uncomment the ALTER DATABASE statement below to set the database to SINGLE_USER mode if the drop database command fails because the database is in use.
ALTER DATABASE TestDB SET SINGLE_USER WITH ROLLBACK IMMEDIATE;
-- Drop the database if it exists
IF EXISTS (
  SELECT name
   FROM sys.databases
   WHERE name = N'TestDB'
)
DROP DATABASE TestDB
GO

-- Create a new database called 'TestDB'
-- Connect to the 'master' database to run this snippet
USE master
GO
-- Create the new database if it does not exist already
IF NOT EXISTS (
  SELECT name
    FROM sys.databases
    WHERE name = N'TestDB'
)
CREATE DATABASE TestDB
GO

USE TestDB
GO
-- Create a new table called 'user_account' in schema 'dbo'
-- Drop the table if it already exists
IF OBJECT_ID('dbo.user_account', 'U') IS NOT NULL
DROP TABLE dbo.user_account
GO
-- Create the table in the specified schema
CREATE TABLE dbo.user_account
(
  user_account_id INT IDENTITY(1,1) PRIMARY KEY, -- primary key column
  gender BIT NOT NULL, -- 0 for male, 1 for female
  dob DATE NOT NULL,
  name NVARCHAR(150) NOT NULL,
);
GO

-- Create a new table called 'mall_mgmt_company' in schema 'dbo'
-- Drop the table if it already exists
IF OBJECT_ID('dbo.mall_mgmt_company', 'U') IS NOT NULL
DROP TABLE dbo.mall_mgmt_company
GO
-- Create the table in the specified schema
CREATE TABLE dbo.mall_mgmt_company
(
  mall_mgmt_company_id INT IDENTITY(1,1) PRIMARY KEY, -- primary key column
  address NVARCHAR(500) NOT NULL,
);
GO

-- Create a new table called 'mall' in schema 'dbo'
-- Drop the table if it already exists
IF OBJECT_ID('dbo.mall', 'U') IS NOT NULL
DROP TABLE dbo.mall
GO
-- Create the table in the specified schema
CREATE TABLE dbo.mall
(
  mall_id INT IDENTITY(1,1) PRIMARY KEY, -- primary key column
  address NVARCHAR(500) NOT NULL,
  num_shops INT NOT NULL,
  mall_mgmt_company_id INT NOT NULL,
  FOREIGN KEY (mall_mgmt_company_id) REFERENCES mall_mgmt_company(mall_mgmt_company_id)
);
GO

-- Create a new table called 'restaurant_chain' in schema 'dbo'
-- Drop the table if it already exists
IF OBJECT_ID('dbo.restaurant_chain', 'U') IS NOT NULL
DROP TABLE dbo.restaurant_chain
GO
-- Create the table in the specified schema
CREATE TABLE dbo.restaurant_chain
(
  restaurant_chain_id INT IDENTITY(1,1) PRIMARY KEY, -- primary key column
  address NVARCHAR(500) NOT NULL,
);
GO

-- Create a new table called 'voucher' in schema 'dbo'
-- Drop the table if it already exists
IF OBJECT_ID('dbo.voucher', 'U') IS NOT NULL
DROP TABLE dbo.voucher
GO
-- Create the table in the specified schema
CREATE TABLE dbo.voucher
(
  voucher_id INT IDENTITY(1,1) PRIMARY KEY, -- primary key column
  description NVARCHAR(500) NOT NULL,
  status VARCHAR(50) NOT NULL,
  date_issued DATE NOT NULL,
);
GO

-- Create a new table called 'purchase_voucher' in schema 'dbo'
-- Drop the table if it already exists
IF OBJECT_ID('dbo.purchase_voucher', 'U') IS NOT NULL
DROP TABLE dbo.purchase_voucher
GO
-- Create the table in the specified schema
CREATE TABLE dbo.purchase_voucher
(
  voucher_id INT NOT NULL PRIMARY KEY, -- primary key column
  purchase_discount INT NOT NULL, -- discount in percentage
  date_time DATETIME NOT NULL,
  user_account_id INT NOT NULL, -- foreign key column referencing user_account table
  FOREIGN KEY (user_account_id) REFERENCES user_account(user_account_id),
  FOREIGN KEY (voucher_id) REFERENCES voucher(voucher_id)
);
GO

-- Create a new table called 'dine_voucher' in schema 'dbo'
-- Drop the table if it already exists
IF OBJECT_ID('dbo.dine_voucher', 'U') IS NOT NULL
DROP TABLE dbo.dine_voucher
GO
-- Create the table in the specified schema
CREATE TABLE dbo.dine_voucher
(
  voucher_id INT NOT NULL PRIMARY KEY, -- primary key column
  cash_discount MONEY NOT NULL, -- discount in currency
  date_time DATETIME NOT NULL,
  user_account_id INT NOT NULL, -- foreign key column referencing user_account table
  FOREIGN KEY (voucher_id) REFERENCES voucher(voucher_id),
  FOREIGN KEY (user_account_id) REFERENCES user_account(user_account_id)
);
GO

-- Create a new table called 'package_voucher' in schema 'dbo'
-- Drop the table if it already exists
IF OBJECT_ID('dbo.package_voucher', 'U') IS NOT NULL
DROP TABLE dbo.package_voucher
GO
-- Create the table in the specified schema
CREATE TABLE dbo.package_voucher
(
  voucher_id INT NOT NULL PRIMARY KEY, -- primary key column
  package_discount INT NOT NULL, -- discount in percentage
  FOREIGN KEY (voucher_id) REFERENCES voucher(voucher_id)
);
GO

-- Create a new table called 'group_voucher' in schema 'dbo'
-- Drop the table if it already exists
IF OBJECT_ID('dbo.group_voucher', 'U') IS NOT NULL
DROP TABLE dbo.group_voucher
GO
-- Create the table in the specified schema
CREATE TABLE dbo.group_voucher
(
  voucher_id INT NOT NULL PRIMARY KEY, -- primary key column
  group_size INT NOT NULL,
  group_discount INT NOT NULL, -- discount in percentage
  date_time DATETIME NOT NULL,
  user_account_id INT NOT NULL, -- foreign key column referencing user_account table
  FOREIGN KEY (voucher_id) REFERENCES voucher(voucher_id),
  FOREIGN KEY (user_account_id) REFERENCES user_account(user_account_id)
);
GO

-- Create a new table called 'complaint' in schema 'dbo'
-- Drop the table if it already exists
IF OBJECT_ID('dbo.complaint', 'U') IS NOT NULL
DROP TABLE dbo.complaint
GO
-- Create the table in the specified schema
CREATE TABLE dbo.complaint
(
  complaint_id INT NOT NULL IDENTITY(1,1) PRIMARY KEY, -- primary key column
  text NVARCHAR(500) NOT NULL,
  status VARCHAR(50) NOT NULL,
  filed_date_time DATETIME NOT NULL,
  user_account_id INT NOT NULL, -- foreign key column referencing user_account table
  FOREIGN KEY (user_account_id) REFERENCES user_account(user_account_id)
);
GO

-- Create a new table called 'shop' in schema 'dbo'
-- Drop the table if it already exists
IF OBJECT_ID('dbo.shop', 'U') IS NOT NULL
DROP TABLE dbo.shop
GO
-- Create the table in the specified schema
CREATE TABLE dbo.shop
(
  shop_id INT NOT NULL IDENTITY(1,1) PRIMARY KEY, -- primary key column
  type VARCHAR(50) NOT NULL,
  mall_id INT NOT NULL, -- foreign key column referencing mall table
  FOREIGN KEY (mall_id) REFERENCES mall(mall_id)
);
GO

-- Create a new table called 'restaurant_outlet' in schema 'dbo'
-- Drop the table if it already exists
IF OBJECT_ID('dbo.restaurant_outlet', 'U') IS NOT NULL
DROP TABLE dbo.restaurant_outlet
GO
-- Create the table in the specified schema
CREATE TABLE dbo.restaurant_outlet
(
  restaurant_outlet_id INT NOT NULL PRIMARY KEY, -- primary key column
  mall_id INT NOT NULL, -- foreign key column referencing mall table
  restaurant_chain_id INT NOT NULL, -- foreign key column referencing restaurant_chain table
  FOREIGN KEY (mall_id) REFERENCES mall(mall_id),
  FOREIGN KEY (restaurant_chain_id) REFERENCES restaurant_chain(restaurant_chain_id)
);
GO

-- Create a new table called 'day_package' in schema 'dbo'
-- Drop the table if it already exists
IF OBJECT_ID('dbo.day_package', 'U') IS NOT NULL
DROP TABLE dbo.day_package
GO
-- Create the table in the specified schema
CREATE TABLE dbo.day_package
(
  day_package_id INT NOT NULL IDENTITY(1,1) PRIMARY KEY, -- primary key column
  description NVARCHAR(500) NOT NULL,
  user_account_id INT NOT NULL, -- foreign key column referencing user_account table
  package_voucher_id INT NOT NULL, -- foreign key column referencing package_voucher table
  FOREIGN KEY (user_account_id) REFERENCES user_account(user_account_id),
  FOREIGN KEY (package_voucher_id) REFERENCES package_voucher(voucher_id)
);
GO

-- Create a new table called 'complaints_on_shop' in schema 'dbo'
-- Drop the table if it already exists
IF OBJECT_ID('dbo.complaints_on_shop', 'U') IS NOT NULL
DROP TABLE dbo.complaints_on_shop
GO
-- Create the table in the specified schema
CREATE TABLE dbo.complaints_on_shop
(
  complaint_id INT NOT NULL, -- composite primary key column
  shop_id INT NOT NULL, -- foreign key column referencing shop table
  FOREIGN KEY (complaint_id) REFERENCES complaint(complaint_id),
  FOREIGN KEY (shop_id) REFERENCES shop(shop_id)
);
GO

-- Create a new table called 'complaints_on_restaurant' in schema 'dbo'
-- Drop the table if it already exists
IF OBJECT_ID('dbo.complaints_on_restaurant', 'U') IS NOT NULL
DROP TABLE dbo.complaints_on_restaurant
GO
-- Create the table in the specified schema
CREATE TABLE dbo.complaints_on_restaurant
(
  complaint_id INT NOT NULL, -- composite primary key column
  restaurant_outlet_id INT NOT NULL, -- foreign key column referencing restaurant_outlet table
  FOREIGN KEY (complaint_id) REFERENCES complaint(complaint_id),
  FOREIGN KEY (restaurant_outlet_id) REFERENCES restaurant_outlet(restaurant_outlet_id)
);
GO

-- Create a new table called 'shop_record' in schema 'dbo'
-- Drop the table if it already exists
IF OBJECT_ID('dbo.shop_record', 'U') IS NOT NULL
DROP TABLE dbo.shop_record
GO
-- Create the table in the specified schema
CREATE TABLE dbo.shop_record
(
  shop_id INT NOT NULL, -- composite primary key column
  user_account_id INT NOT NULL, -- composite primary key column
  date_time_in DATETIME NOT NULL, -- composite primary key column
  amount_spent MONEY NOT NULL,
  date_time_out DATETIME NOT NULL,
  FOREIGN KEY (shop_id) REFERENCES shop(shop_id),
  FOREIGN KEY (user_account_id) REFERENCES user_account(user_account_id),
  PRIMARY KEY (shop_id, user_account_id, date_time_in)
);
GO

-- Create a new table called 'dine_record' in schema 'dbo'
-- Drop the table if it already exists
IF OBJECT_ID('dbo.dine_record', 'U') IS NOT NULL
DROP TABLE dbo.dine_record
GO
-- Create the table in the specified schema
CREATE TABLE dbo.dine_record
(
  user_account_id INT NOT NULL, -- composite primary key column
  restaurant_outlet_id INT NOT NULL, -- composite primary key column
  date_time_in DATETIME NOT NULL, -- composite primary key column
  amount_spent MONEY NOT NULL,
  date_time_out DATETIME NOT NULL,
  FOREIGN KEY (user_account_id) REFERENCES user_account(user_account_id),
  FOREIGN KEY (restaurant_outlet_id) REFERENCES restaurant_outlet(restaurant_outlet_id),
  PRIMARY KEY (user_account_id, restaurant_outlet_id, date_time_in)
);
GO

-- Create a new table called 'user_relationship' in schema 'dbo'
-- Drop the table if it already exists
IF OBJECT_ID('dbo.user_relationship', 'U') IS NOT NULL
DROP TABLE dbo.user_relationship
GO
-- Create the table in the specified schema
CREATE TABLE dbo.user_relationship
(
  user_account_id1 INT NOT NULL, -- composite primary key column
  user_account_id2 INT NOT NULL, -- composite primary key column
  type VARCHAR(50) NOT NULL,
  PRIMARY KEY (user_account_id1, user_account_id2)
);
GO

-- Create a new table called 'recommendation' in schema 'dbo'
-- Drop the table if it already exists
IF OBJECT_ID('dbo.recommendation', 'U') IS NOT NULL
DROP TABLE dbo.recommendation
GO
-- Create the table in the specified schema
CREATE TABLE dbo.recommendation
(
  recommendation_id INT NOT NULL IDENTITY(1,1) PRIMARY KEY, -- primary key column
  valid_period INT NOT NULL, -- in days
  date_issued DATE NOT NULL,
  user_account_id1 INT NOT NULL, -- foreign key column referencing user_account table
  mall_id INT NOT NULL, -- foreign key column referencing mall table
  restaurant_outlet_id INT NOT NULL, -- foreign key column referencing restaurant_outlet table
  day_package_id INT NOT NULL, -- foreign key column referencing day_package table
  voucher_id INT NOT NULL, -- foreign key column referencing voucher table
  FOREIGN KEY (user_account_id1) REFERENCES user_account(user_account_id),
  FOREIGN KEY (mall_id) REFERENCES mall(mall_id),
  FOREIGN KEY (restaurant_outlet_id) REFERENCES restaurant_outlet(restaurant_outlet_id),
  FOREIGN KEY (day_package_id) REFERENCES day_package(day_package_id),
  FOREIGN KEY (voucher_id) REFERENCES voucher(voucher_id)
);
GO

-- Create a new table called 'user_use_recommendation' in schema 'dbo'
-- Drop the table if it already exists
IF OBJECT_ID('dbo.user_use_recommendation', 'U') IS NOT NULL
DROP TABLE dbo.user_use_recommendation
GO
-- Create the table in the specified schema
CREATE TABLE dbo.user_use_recommendation
(
  user_account_id INT NOT NULL, -- composite primary key column
  recommendation_id INT NOT NULL, -- composite primary key column
  FOREIGN KEY (user_account_id) REFERENCES user_account(user_account_id),
  FOREIGN KEY (recommendation_id) REFERENCES recommendation(recommendation_id),
  PRIMARY KEY (user_account_id, recommendation_id)
);
GO

-- Create a new table called 'restaurant_outlet_has_day_package' in schema 'dbo'
-- Drop the table if it already exists
IF OBJECT_ID('dbo.restaurant_outlet_has_day_package', 'U') IS NOT NULL
DROP TABLE dbo.restaurant_outlet_has_day_package
GO
-- Create the table in the specified schema
CREATE TABLE dbo.restaurant_outlet_has_day_package
(
  day_package_id INT NOT NULL, -- composite primary key column
  restaurant_outlet_id INT NOT NULL, -- composite primary key column
  FOREIGN KEY (day_package_id) REFERENCES day_package(day_package_id),
  FOREIGN KEY (restaurant_outlet_id) REFERENCES restaurant_outlet(restaurant_outlet_id),
  PRIMARY KEY (day_package_id, restaurant_outlet_id)
);
GO

-- Create a new table called 'mall_has_day_package' in schema 'dbo'
-- Drop the table if it already exists
IF OBJECT_ID('dbo.mall_has_day_package', 'U') IS NOT NULL
DROP TABLE dbo.mall_has_day_package
GO
-- Create the table in the specified schema
CREATE TABLE dbo.mall_has_day_package
(
  day_package_id INT NOT NULL, -- composite primary key column
  mall_id INT NOT NULL, -- composite primary key column
  FOREIGN KEY (day_package_id) REFERENCES day_package(day_package_id),
  FOREIGN KEY (mall_id) REFERENCES mall(mall_id),
  PRIMARY KEY (day_package_id, mall_id)
);
GO


