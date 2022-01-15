#union:
#The UNION operator is used to combine the result-set of two or more SELECT statements.
SELECT CustomerID FROM ORDERS UNION SELECT COUNTRY FROM customers ORDER BY CustomerID;
#union all: The UNION operator selects only distinct values by default. To allow duplicate values, use UNION ALL
SELECT CustomerID FROM Customers UNION ALL SELECT CustomerID FROM Orders ORDER BY CustomerID;

##groupby:The GROUP BY statement groups rows that have the same values into summary rows
#groupby without joins 
SELECT COUNT(CustomerID), Country FROM Customers GROUP BY Country;

##groupby with joins 
SELECT customers.customerName, COUNT(Orders.OrderID) AS NumberOfOrders FROM Orders LEFT JOIN customers ON Orders.customerID = customers.CustomerID GROUP BY CustomerName;

#having
SELECT COUNT(CustomerID), Country FROM Customers GROUP BY Country HAVING COUNT(CustomerID) < 5;

#exists:The EXISTS operator is used to test for the existence of any record in a subquery.
#The EXISTS operator returns TRUE if the subquery returns one or more records.
SELECT CustomerName FROM customers WHERE EXISTS (SELECT CustomerName FROM customers WHERE orders.orderID = customers.customerID);


##any,all:
#any:
SELECT customername FROM customers WHERE customerID = ANY(SELECT CustomerID FROM customers WHERE customerid = '1');
#all:ALL means that the condition will be true only if the operation is true for all values in the range. 
SELECT CustomerName FROM customers WHERE CustomerID = ALL(SELECT CustomerID FROM customers WHERE CustomerID ='2');
#subquery
SELECT customername, country FROM customers WHERE customerid IN (SELECT customerid FROM customers);   
SELECT customername, country FROM customers WHERE Country NOT IN(SELECT country FROM customers WHERE country='USA');  
