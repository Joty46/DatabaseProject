--welcome to learning point
set serveroutput on
begin
dbms_output.put_line('Welcome to learning point');
end;
/

--find total no of courses
set serveroutput on

declare 
noofcourses courses.courseId%type;
begin
select count(courseId) into noofcourses
from courses;
dbms_output.put_line('Total no of courses: '||noofcourses);
end;
/

--find a student
set serveroutput on

declare 
fid student.userId%type:=1016;
sid topics.studentId%type;
tid topics.teacherId%type;
cid topics.courseId%type;

begin
select courseId,studentId,teacherId into cid,sid,tid
from topics
where teacherId in(
select userId from teacher
where userId=fid);
dbms_output.put_line('Course '|| cid || ' and teacher '|| tid|| ' and student '||sid);
end;
/

--no of courses is suitable or not using if else statement
set serveroutput on

declare 
tcourses courses.courseId%type;

begin
select count(distinct(courseId)) into tcourses
from courses;
if(tcourses>10) then
dbms_output.put_line('No of courses is alright ');
else
dbms_output.put_line('Our program is not reaching people take some steps !');
end if;
end;
/

--loop+cursor
set serveroutput on
declare
	cursor topic_row is select courseId,teacherId,studentId from topics;
   topic_record topic_row%rowtype;

begin
open topic_row;
	loop 
		fetch topic_row into topic_record;
		exit when topic_row%notfound;
	dbms_output.put_line(topic_record.courseId||' course is conducted by ' || topic_record.teacherId || 'and take by '||topic_record.studentId);
	end loop;
close topic_row;
end;
/
 


