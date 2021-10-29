/*Order Placed by each Customer*/
SELECT [Customer_Key (FK)], Count(ShoppingCarts.ShoppingCart_Key) AS TotalOrders
FROM [ShoppingCarts]
Where [Customer_Key (FK)] = [Customer_Key (FK)]
GROUP BY [Customer_Key (FK)] 
Order BY Count(ShoppingCarts.ShoppingCart_Key) DESC;

/*Orders Received in a Day*/
SELECT OrderPlaced_Date, COUNT(ShoppingCart_Key) AS num_orders
FROM ShoppingCarts
WHERE OrderPlaced_Date = '1/9/2005'
GROUP BY OrderPlaced_Date;


/*Orders Received In a Specific Year*/
SELECT ShoppingCart_Key, COUNT(ShoppingCart_Key) AS num_orders
FROM ShoppingCarts
WHERE OrderPlaced_Date BETWEEN '1/9/2000' and '12/30/2000'
GROUP BY ShoppingCart_Key;


/*Averge Price of specific category of Products in store*/
SELECT AVG(cast(Product_Price as int)) AS averagePrice
FROM Products  
WHERE Product_Type = 'Kitchen Utensil';

/*Number of specific Category of Product in Store*/
SELECT count(*)
AS num_of_specific_type_of_products
FROM Products  
WHERE Product_Type = 'Clothing';

/*Generate Bill From Tax & Billed Amount*/
SELECT  Invoice_Key, 
SUM(cast(Taxes_Billed as int)), SUM(cast(Amount_Billed as int))
AS TotalBill
FROM    Invoices
GROUP   BY Invoice_Key;


SELECT 
AVG (cast (Taxes_Billed as int) + cast(Amount_Billed as int))
AS Reveune
FROM   Invoices;


/*SELECT count(*)
AS num_of_products
FROM Products ;*/

SELECT count(*)
AS num_of_specific_product
FROM Products  
WHERE Product_Name = 'H&M';

SELECT Product_Name, 
MIN(Product_Price) AS SmallestPrice, 
MAX(Product_Price) AS HighestPrice
FROM Products
Group By Product_Name;

/*SELECT Count (*) as Total_Customers
From Customers;*/

/*SELECT First_Name, Last_Name, OrderPlaced_Date
From ShoppingCarts join Customers
On ShoppingCarts.[Customer_Key (FK)] = Customers.Customer_Key
WHERE First_Name = 'Bob';*/

SELECT  Payment_Date,Payment_Amount,Invoice_Key
From Payments join Invoices
On Payments.[Invoice_Key (FK)] = Invoices.Invoice_Key
WHERE Invoice_Key = '200';

SELECT 
SUM (cast (Taxes_Billed as int) + cast(Amount_Billed as int))
AS Total_Sales
FROM   Invoices;

/*SELECT WishList_UpdatedTime From WishLists
WHERE WishList_Key BETWEEN 100 and 150;*/


