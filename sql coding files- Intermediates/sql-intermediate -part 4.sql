#case-The CASE statement goes through conditions and returns a value when the first condition is met (like an if-then-else statement). So, once a condition is true, it will stop reading and return the result. If no conditions are true, it returns the value in the ELSE clause.
select customerid,
case 
    when customerid>2 then'id greater than 2'
    when customerid=2 then 'id equal to 2'
    else 'id is less than 2'
    end as customerid from customers;
##Null functions :
#ifnull():
select customername,customerid*(customerid+ifnull(customerid,0)) from customers;
##comments:
#single line : --
select*from customers-- where country='india';
