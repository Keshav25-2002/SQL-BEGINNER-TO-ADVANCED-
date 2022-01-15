#update = used to modify existing records in a table 
use demo_sql;
select*from studentdb;
#update :
#in single in field :
update studentdb set age=29 where name='RAHUL';
#in multiple fields :
update studentdb set name='JOE' where city='CHENNAI';
#delete = used to delte existing records 
delete from studentdb where age=29;
#min &max()
#min= represents minimum value 
select min(age) as smallage from studentdb;
#max=represents largest value 
select max(age) as largeage from studentdb;
#count: 
select count(age) from studentdb;
#average()
select avg(age) from studentdb;
#sum()
select sum(age) from studentdb;
