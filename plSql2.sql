--while loop
set serveroutput on
declare
sid student.userId%type;
sname student.name%type;
semail student.email%type;

begin
sid:=1011;
while sid<=1018
loop
select name,email into sname,semail
from student
where userId=sid;
dbms_output.put_line('Student id: '||sid||' name is '||sname||' email is '||semail);
sid:=sid+1;
end loop;
end;
/

--for loop
set serveroutput on
declare
sid student.userId%type;
sname student.name%type;
semail student.email%type;

begin
for sid in 1011..1018
loop
select name,email into sname,semail
from student
where userId=sid;
dbms_output.put_line('Student id: '||sid||' name is '||sname||' email is '||semail);
end loop;
end;
/

--add a value procedure
set serveroutput on
create or replace procedure add_user(
id login.userId%type,
name login.userName%type,
pass login.password%type,
ag login.age%type)
is
begin
insert into login(userId,userName,password,age) values(id,name,pass,ag);
end add_user;
/
show errors
set serveroutput on
declare
id login.userId%type;
name login.userName%type;
pass login.password%type;
ag login.age%type;
begin
dbms_output.put_line('Enter value for adding user');
id:=&id;
name:=&name;
pass:=&pass;
ag:=&ag;
add_user(id,name,pass,ag);
end;
/
select * from login
order by userId;

--add a course procedure
set serveroutput on
create or replace procedure add_course(
cid courses.courseId%type,
toname courses.topicName%type,
tname courses.teacherName%type,
des courses.description%type)
is
begin
insert into courses(courseId,topicName,teacherName,description) values(cid,toname,tname,des);
end add_course;
/
show errors
set serveroutput on
declare
cid courses.courseId%type;
toname courses.topicName%type;
tname courses.teacherName%type;
des courses.description%type;
begin
dbms_output.put_line('Enter value for adding course');
cid:=3134;
toname:='Statistics';
tname:='Mr habib';
des:='Statistics is very important';
add_course(cid,toname,tname,des);
end;
/
select * from courses
order by courseId;

--update a course procedure
set serveroutput on
create or replace procedure update_course(
cid courses.courseId%type,
ctopic courses.topicName%type)
is
begin
update courses set topicName=ctopic where courseId=cid;
end update_course;
/
show errors
set serveroutput on
declare
cid courses.courseId%type;
ctopic courses.topicName%type;
begin
dbms_output.put_line('Enter value for updating course');
cid:=3101;
ctopic:='Statistics';
update_course(cid,ctopic);
end;
/
select * from courses
order by courseId;

--delete a course
set serveroutput on
create or replace procedure delete_course(
cid courses.courseId%type)
is
begin
delete from courses where courseId=cid;
end delete_course;
/
show errors
set serveroutput on
declare
cid courses.courseId%type;
begin
dbms_output.put_line('Enter value for deleting course');
cid:=3101;
delete_course(cid);
end;
/
select * from courses
order by courseId;

--function
set serveroutput on
create or replace function avgAge return float is
avg_age login.age%type;
begin
select avg(nvl(age,0)) into avg_age
from login;
return avg_age;
end;
/
set serveroutput on
begin
dbms_output.put_line('Average Age is '||avgAge);
end;
/





  

