##common table expression: A SQL CTE (Common Table Expression) defines a temporary result set which you can then use in a SELECT statement. 
# It becomes a convenient way to manage complicated queries,with clause can include one or more cte . it and maintain complex queries  to writ4e 
select*from orders;
#basic cte query
with cte1 as (select customerid,customername from customers)
select*from cte1;
#other example :
with cte2 as(select count(customerid),customername from customers group by country)
select * from cte2;
