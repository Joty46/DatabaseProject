--in
select userId,username,age
from logIn
where userId in(
	select userId from student
	where favouriteTopic like '%log%'
);

--union all
select userId,userName,age
from logIn
where age>=20
union all
select userId,userName,age
from logIn 
where age <40;

--union
select userId,userName,age
from logIn
where age>=20
union
select userId,userName,age
from logIn 
where age <40;

--intersect
select userId,userName,age
from logIn
where age>=20
intersect
select userId,userName,age
from logIn 
where age <40;

--minus
select userId,userName,age
from logIn
where age>=20
minus
select userId,userName,age
from logIn 
where age <40;