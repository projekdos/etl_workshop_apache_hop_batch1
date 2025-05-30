CREATE SCHEMA IF NOT EXISTS staging;


DROP TABLE IF EXISTS staging.customers;
CREATE TABLE staging.customers (
  customerNumber INTEGER NOT NULL,
  customerName VARCHAR(50) NOT NULL,
  contactLastName VARCHAR(50) NOT NULL,
  contactFirstName VARCHAR(50) NOT NULL,
  phone VARCHAR(50) NOT NULL,
  addressLine1 VARCHAR(50) NOT NULL,
  addressLine2 VARCHAR(50) NULL,
  city VARCHAR(50) NOT NULL,
  state VARCHAR(50) NULL,
  postalCode VARCHAR(15) NULL,
  country VARCHAR(50) NOT NULL,
  salesRepEmployeeNumber INTEGER NULL,
  creditLimit NUMERIC(10,2) NULL
);

DROP TABLE IF EXISTS staging.employees;
CREATE TABLE staging.employees (
  employeeNumber INTEGER NOT NULL,
  lastName VARCHAR(50) NOT NULL,
  firstName VARCHAR(50) NOT NULL,
  extension VARCHAR(10) NOT NULL,
  email VARCHAR(100) NOT NULL,
  officeCode VARCHAR(10) NOT NULL,
  reportsTo INTEGER NULL,
  jobTitle VARCHAR(50) NOT NULL
);

DROP TABLE IF EXISTS staging.offices;
CREATE TABLE staging.offices (
  officeCode VARCHAR(10) NOT NULL,
  city VARCHAR(50) NOT NULL,
  phone VARCHAR(50) NOT NULL,
  addressLine1 VARCHAR(50) NOT NULL,
  addressLine2 VARCHAR(50) NULL,
  state VARCHAR(50) NULL,
  country VARCHAR(50) NOT NULL,
  postalCode VARCHAR(15) NOT NULL,
  territory VARCHAR(10) NOT NULL
);

DROP TABLE IF EXISTS staging.orderdetails;
CREATE TABLE staging.orderdetails (
  orderNumber INTEGER NOT NULL,
  productCode VARCHAR(50) NOT NULL,
  quantityOrdered VARCHAR(100) NOT NULL,
  priceEach VARCHAR(100) NOT NULL,
  orderLineNumber VARCHAR(100) NOT NULL,
  currency VARCHAR(50) NOT NULL
);

DROP TABLE IF EXISTS staging.orders;
CREATE TABLE staging.orders (
  orderNumber INTEGER NOT NULL,
  orderDate DATE NOT NULL,
  requiredDate DATE NOT NULL,
  shippedDate DATE NULL,
  status VARCHAR(15) NOT NULL,
  comments TEXT NULL,
  customerNumber INTEGER NOT NULL
);

DROP TABLE IF EXISTS staging.payments;
CREATE TABLE staging.payments (
  customerNumber INTEGER NOT NULL,
  checkNumber VARCHAR(50) NOT NULL,
  paymentDate DATE NOT NULL,
  amount NUMERIC(10,2) NOT NULL
);

DROP TABLE IF EXISTS staging.productlines;
CREATE TABLE staging.productlines (
  productLine VARCHAR(50) NOT NULL,
  TEXTDescription VARCHAR(4000) NULL,
  htmlDescription TEXT NULL,
  image TEXT NULL
);

DROP TABLE IF EXISTS staging.products;
CREATE TABLE staging.products (
  productCode VARCHAR(15) NOT NULL,
  productName VARCHAR(70) NOT NULL,
  productLine VARCHAR(50) NOT NULL,
  productScale VARCHAR(10) NOT NULL,
  productVendor VARCHAR(50) NOT NULL,
  productDescription TEXT NOT NULL,
  quantityInStock SMALLINT NOT NULL,
  buyPrice NUMERIC(10,2) NOT NULL,
  MSRP NUMERIC(10,2) NOT NULL
);