CREATE DATABASE BlueJackSport
 
CREATE TABLE Position(
	Position_ID CHAR (5) PRIMARY KEY CHECK(Position_ID LIKE 'PO[0-9][0-9][0-9]'),
	Position_Name VARCHAR(20),
	Salary NUMERIC(15,0)
)

CREATE TABLE Staff(
	Staff_ID CHAR(5) PRIMARY KEY CHECK(Staff_ID LIKE 'ST[0-9][0-9][0-9]'),
	Position_ID CHAR(5) CHECK(Position_ID LIKE 'PO[0-9][0-9][0-9]') REFERENCES Position ON UPDATE CASCADE ON DELETE CASCADE,
	Staff_Name VARCHAR(50),
	Gender VARCHAR(10) CHECK(Gender LIKE 'Male' OR Gender LIKE 'Female'),
	DoB DATE CHECK(DATEDIFF(YEAR, DoB, GETDATE()) > 16),
	Active_Date DATE
)

CREATE TABLE Header_Sales_Transaction(
	Sales_TransactionID CHAR(5) CHECK(Sales_TransactionID LIKE 'SA[0-9][0-9][0-9]') PRIMARY KEY,
	Staff_ID CHAR(5) REFERENCES Staff ON UPDATE CASCADE ON DELETE CASCADE,
	Sales_Trasaction_Date DATE
)

CREATE TABLE Header_Purchases_Transaction(
	Purchase_TransactionID CHAR(5) CHECK(Purchase_TransactionID LIKE 'PU[0-9][0-9][0-9]') PRIMARY KEY,
	Staff_ID CHAR(5) REFERENCES Staff ON UPDATE CASCADE ON DELETE CASCADE,
	Purchase_Transaction_Date DATE
)

CREATE TABLE Category(
	Category_ID CHAR(5) PRIMARY KEY CHECK(Category_ID LIKE 'TY[0-9][0-9][0-9]'),
	Category_Name VARCHAR(20)
)

CREATE TABLE Brand(
	Brand_ID CHAR(5) PRIMARY KEY CHECK(Brand_ID LIKE 'BR[0-9][0-9][0-9]'),
	Brand_Name VARCHAR(20),
	Origin VARCHAR(20)
)

CREATE TABLE Item(
	Item_ID CHAR(5) PRIMARY KEY CHECK(Item_ID LIKE 'IT[0-9][0-9][0-9]'),
	Brand_ID CHAR(5) REFERENCES Brand ON UPDATE CASCADE ON DELETE CASCADE,
	Category_ID CHAR(5) REFERENCES Category ON UPDATE CASCADE ON DELETE CASCADE,
	Item_Name VARCHAR(50),
	Item_Price NUMERIC(10,0) CHECK(Item_Price > 0),
	Stock NUMERIC(5,0) CHECK(Stock > 0)
)

CREATE TABLE Detail_Sales_Transaction(
	Sales_TransactionID CHAR(5) CHECK(Sales_TransactionID LIKE 'SA[0-9][0-9][0-9]') REFERENCES Header_Sales_Transaction ON UPDATE CASCADE ON DELETE CASCADE,
	Item_ID CHAR(5) CHECK(Item_ID LIKE 'IT[0-9][0-9][0-9]') REFERENCES Item ON UPDATE CASCADE ON DELETE CASCADE,
	Quantity NUMERIC(10,0) CHECK(Quantity > 0),
	PRIMARY KEY(Sales_TransactionID,Item_ID)
)

CREATE TABLE Detail_Purchases_Transaction(
	Purchase_TransactionID CHAR(5) CHECK(Purchase_TransactionID LIKE 'PU[0-9][0-9][0-9]') REFERENCES Header_Purchases_Transaction ON UPDATE CASCADE ON DELETE CASCADE,
	Item_ID CHAR(5) CHECK(Item_ID like 'IT[0-9][0-9][0-9]') REFERENCES Item ON UPDATE CASCADE ON DELETE CASCADE,
	Quantity NUMERIC(10,0) CHECK(Quantity > 0), 
	PRIMARY KEY(Purchase_TransactionID,Item_ID)
)

DROP TABLE Detail_Sales_Transaction
DROP TABLE Detail_Purchases_Transaction
DROP TABLE Item
DROP TABLE Category
DROP TABLE Brand
DROP TABLE Header_Sales_Transaction
DROP TABLE Header_Purchases_Transaction
DROP TABLE Staff
DROP TABLE Position