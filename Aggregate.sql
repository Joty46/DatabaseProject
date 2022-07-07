select * from student 
where favouriteTopic='biology';

select userId,username
from logIn
where age>=20 and age<=40;

select * from logIn
where age between 20 and 38;
select * from logIn
where age in(20,38);

select * from logIn
order by age;

select userId,userName,(age+5) from logIn
where age in(20,36);

select max(age) from logIn;
select min(age) from logIn;
select sum(age) from logIn;
select count(userId) from teacher;
select count(distinct(age)) from logIn;
select avg(age) from logIn;

select count(favouriteTopic),userId from student
group by userId
;
 