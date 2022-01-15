#like : used in where clause to search for a specific pattern 
#starting with'k%'
select*from studentdb where name like'a%';
#ending with '%h;
select*from studentdb where name like '%h';
#in 2nd position : 
select*from studentdb where name like'_r%';
#starts with s and ends with h
select*from studentdb where name like's%h';
#not start with a
select*from studentdb where name not like 'a%';
##wildcards : used to substitute one or more char in a string 
select*from studentdb where name like'dis%';
#printing just middle letter
select*from studentdb where name like'%is%';
##in = allows to specify multiple values in where clause 
select*from studentdb where city in('chennai','trichy');
#not in 
select*from studentdb where city not in('chennai','trichy');
##between :beginning and end values are taken into consideration 
select*from studentdb where age between 20 and 24;
#not between : 
select*from studentdb where age not between 20 and 22;
##aliases : useed to give a table or col in table a temporary name 
select roll_no as RN,city as C from  studentdb;
select roll_no,concat(name,',',age,',',city) as completedetails from studentdb;
