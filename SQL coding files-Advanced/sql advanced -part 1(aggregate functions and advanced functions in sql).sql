use store;
##advanced sql 
#1.aggregate functions : 
#1. distinct clause : helps in avoiding duplicate values 
select distinct CustomerName from customers;
#2. count,sum,avg,min,max.
#(i) count(): used to return number of records 
select count(customerid) from customers;
#(ii)sum(): retuns total sum of numeric column
select sum(orderid) from orders;
#(iii)avg() : returns value of numeric clumn 
select avg(customerid) from customers;
#(iv)min(): used to print minimum value 
select min(orderid) from orders;
#(v) max(): used to print maximum value 
select max(customerid) from customers;

#2. ADVANCED FUNCTIONS(): 
#(i)bin(): converts decimal to bimary number 
select bin(20);
#(ii)binary(): 
select binary "CLOUDY";
#(iii)coalesce():returns first non null epression in a list 
select coalesce(null,null,'cloudy',null,'clou');
#(iv)connection_id(): returns unique connection id for the current connection 
select connection_id();
#(v)current_user(): returns user name and host name for mysql account used by the servr 
select current_user();
#(vi) database:retuns name of default database 
select database();
#(vii) if():returns one value if a condition is true 
select if(200<300,"yes","no");
#(viii) last_insert_id(): returns first auto increment value that was set by most recent insert or update statement 
select last_insert_id();
#(ix)nullif(): It returns the first expression if the two expressions are not equal.if its equla then it prints null values 
select nullif(15,0.1);
#(x)session_user(): returns host name an user name of user 
select session_user();
#(xi)version(): returns version of mysql database
select version();