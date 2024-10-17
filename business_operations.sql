CREATE DATABASE Capstone1Bakery;
CREATE TABLE Supplies(
SupplyID INT PRIMARY KEY AUTO_INCREMENT,
Typeof VARCHAR(25)

);

CREATE TABLE OrderPlacedforSupplies(
TrackingNumber VARCHAR(255) PRIMARY KEY,
Price INT,
SupplyID INT ,
Constraint fk1 FOREIGN KEY(SupplyID)  REFERENCES Supplies(SupplyID) );



CREATE TABLE SUPPLIERS(
SupplierID INT,
SupplierName VARCHAR(255),
SupplyID INT,
Constraint fk2 FOREIGN KEY Suppliers(SupplyID)  REFERENCES Supplies(SupplyID)
 );

Create TABLE Menu(
DishID INT PRIMARY KEY,
NameDish VARCHAR(100),
Price INT
);

#Will change menu id to enum later
CREATE TABLE Orders(
OrderID INT PRIMARY KEY AUTO_INCREMENT,
MenuID INT,
Price DEC,
Time DATETIME,
CONSTRAINT fk3 FOREIGN KEY Orders(MenuID) 
REFERENCES Menu(DishID)
);

#Employee role will be changed to enum later like maybe cashier,kitchen, etc
CREATE TABLE Employees(
EmployeeID INT PRIMARY KEY AUTO_INCREMENT,
EmployeeName VARCHAR(255),
EmployeePhoneNumber VARCHAR(255),
EmployeeRole VARCHAR(255)
);

CREATE TABLE Customers(
CustomerName VARCHAR(100),
Orderdetail VarChar(255)
);



#have to add null and autoincrement later for the datatypes
