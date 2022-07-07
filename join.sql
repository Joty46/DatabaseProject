--join
select s.name,t.name,s.userId as studentId,t.userId teacherId
from student s,teacher t
where s.favouriteTopic=t.uploadedItem;

--natural join
select * from student natural join teacher;

--inner join
select userId,s.name as sname,t.name as tname
from student s inner join teacher t
using(userId);

--cross join
select * from student cross join teacher;

--left outer join
select userId,s.name as sname,t.name as tname from student s left outer join teacher t
using(userId);

--right outer join
select userId,s.name as sname,t.name as tname from student s right outer join teacher t
using(userId);

--full outer join
select userId,s.name as sname,t.name as tname from student s full outer join teacher t
using(userId);