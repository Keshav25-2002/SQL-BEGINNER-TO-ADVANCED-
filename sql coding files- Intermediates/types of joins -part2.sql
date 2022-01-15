#1. joining 2 tables
SELECT Orders.OrderID, Customers.CustomerName, Orders.OrderDate FROM Orders INNER JOIN Customers ON Orders.CustomerID=Customers.CustomerID;
#inner join : 
# there are 4 types of joins : 
#1. Inner join : records that have matching values in both tables
SELECT Orders.OrderID, Customers.CustomerName FROM Orders INNER JOIN Customers ON Orders.CustomerID = Customers.CustomerID;

#2. left join : The LEFT JOIN keyword returns all records from the left table (table1), 
#and the matching records from the right table (table2). 
#The result is 0 records from the right side, if there is no match.
SELECT Customers.CustomerName, Orders.OrderID FROM Customers LEFT JOIN Orders ON Customers.CustomerID = Orders.CustomerID ORDER BY Customers.CustomerName;

#3. right join : he RIGHT JOIN keyword returns all records from the right table (table2), and the matching records from the left table (table1). 
#The result is 0 records from the left side, if there is no match. 
SELECT Orders.OrderID, Customers.CustomerName, Customers.ContactName FROM Orders RIGHT JOIN customers ON Orders.OrderID = Customers.CustomerID ORDER BY Customers.CustomerID;

#4.full join : The FULL OUTER JOIN keyword returns all records when there is a match in left (table1) or right (table2) table records.
SELECT Customers.CustomerName,Orders.OrderID FROM Customers FULL JOIN Orders ON Customers.CustomerID=Orders.CustomerID ORDER BY Customers.CustomerName;
