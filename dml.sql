--add column
alter table teacher add teacherAge int;
describe teacher;

--rename column
alter table teacher rename column teacherAge to teacherSubmission;
describe teacher;

--modify column
alter table teacher modify teacherSubmission varchar(20);
describe teacher;

--drop column
alter table teacher drop column teacherSubmission;
describe teacher;

--update value
select * from teacher;

update teacher set email='hasib@gmail.com' where userId=1019;
select *from teacher;

-- delete values
select * from student;
delete from student where userId=1012;
select * from student;


