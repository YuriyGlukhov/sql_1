-- TABLE
CREATE TABLE "Categories" ("CategoryID" SMALLINT,"CategoryName" VARCHAR(20),"Description" VARCHAR(60));
CREATE TABLE "Clusters" ("month" SMALLINT,"credit_amount" INTEGER,"credit_term" SMALLINT,"age" SMALLINT,"sex" VARCHAR(10),"education" VARCHAR(30),"product_type" VARCHAR(30),"having_children_flg" SMALLINT,"region" SMALLINT,"income" INTEGER,"family_status" VARCHAR(10),"phone_operator" SMALLINT,"is_client" SMALLINT,"bad_client_target" SMALLINT,"cluster" SMALLINT);
CREATE TABLE "Customers" ("CustomerID" SMALLINT,"CustomerName" VARCHAR(40),"ContactName" VARCHAR(20),"Address" VARCHAR(50),"City" VARCHAR(20),"PostalCode" VARCHAR(10),"Country" VARCHAR(20));
CREATE TABLE demo (ID integer primary key, Name varchar(20), Hint text );
CREATE TABLE "Employees" ("EmployeeID" SMALLINT,"LastName" VARCHAR(10),"FirstName" VARCHAR(10),"BirthDate" VARCHAR(10),"Photo" VARCHAR(20),"Notes" VARCHAR(430));
CREATE TABLE "OrderDetails" ("OrderDetailID" SMALLINT,"OrderID" INTEGER,"ProductID" SMALLINT,"Quantity" SMALLINT);
CREATE TABLE "Orders" ("OrderID" INTEGER,"CustomerID" SMALLINT,"EmployeeID" SMALLINT,"OrderDate" VARCHAR(10),"ShipperID" SMALLINT);
CREATE TABLE "Products" ("ProductID" SMALLINT,"ProductName" VARCHAR(40),"SupplierID" SMALLINT,"CategoryID" SMALLINT,"Unit" VARCHAR(20),"Price" REAL);
CREATE TABLE "Shippers" ("ShipperID" SMALLINT,"ShipperName" VARCHAR(20),"Phone" VARCHAR(20));
CREATE TABLE "Suppliers" ("SupplierID" SMALLINT,"SupplierName" VARCHAR(40),"ContactName" VARCHAR(30),"Address" VARCHAR(50),"City" VARCHAR(20),"PostalCode" VARCHAR(10),"Country" VARCHAR(20),"Phone" VARCHAR(20));
 
-- INDEX
 
-- TRIGGER
 
-- VIEW
 
