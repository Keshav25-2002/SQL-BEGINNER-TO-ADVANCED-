#views: . A view also has rows and columns as they are in a real table in the database. We can create a view by selecting fields from one or more tables present in the database. A View can either have all the rows of a table or specific rows based on certain condition.
CREATE VIEW customerdetails AS
SELECT customername, country
FROM customers
WHERE  customername='Krish';
select* from customerdetails;
#using orderby: 
CREATE VIEW customerdetai AS
SELECT customername, country
FROM customers order by country desc;
select*from customerdetai;
#creating Views using multiple tables : 
create VIEW customerdeta AS
SELECT customers.customerid, customers.country,orders.orderid
FROM customers, orders
WHERE customers.customerid = orders.OrderID;
select*from customerdeta;

##mathematical function: 
#(i)sqrt():
select sqrt(300);
#(ii)PI():
select PI();
#(iii)square():
select square(25);
#(iv)round():
select round(215.512,3);
#(v)ceiling and floor():
select ceiling(49.99);
select floor(49.99);

#date function(): 
select now();
#current date;
select curdate();
#current time : 
select curtime();
#date();
select orderid,date(orderdate) as birthday from orders;

#string functions 
#ASCII(): This function is used to find the ASCII value of a character.
SELECT ascii('t');
#CHAR_LENGTH(): Doesn’t work for SQL Server. Use LEN() for SQL Server. This function is used to find the length of a word.
SELECT char_length('Hello!');
#CHARACTER_LENGTH(): Doesn’t work for SQL Server. Use LEN() for SQL Server. This function is used to find the length of a line.
 SELECT CHARACTER_LENGTH('good morning');
#CONCAT_WS(): This function is used to add two words or strings with a symbol as concatenating symbol.
SELECT CONCAT_WS('_', 'good', 'morning');
#INSTR(): This function is used to find the occurrence of an alphabet.
select INSTR('good morning', 'o');
#LCASE(): This function is used to convert the given string into lower case.
Select LCASE ("GOOD MORNING");
#LEFT(): This function is used to SELECT a sub string from the left of given size or characters.
SELECT LEFT('GOOD MRNING', 3);
#LENGTH(): This function is used to find the length of a word.
Select LENGTH('Good morning');

