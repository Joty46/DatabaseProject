insert into logIn(userId,userName,password,age) values(1011,'sakib hasan','xyz',16);
insert into logIn(userId,userName,password,age) values(1012,'hasan mahmud','xyzxyz',22);
insert into logIn(userId,userName,password,age) values(1013,'rajjak hossain','yzxyzx',18);
insert into logIn(userId,userName,password,age) values(1014,'abid hasan','yzx',20);
insert into logIn(userId,userName,password,age) values(1015,'abir shah','xxyyzz',21);
insert into logIn(userId,userName,password,age) values(1016,'monirujjaman','zzyyxx',33);
insert into logIn(userId,userName,password,age) values(1017,'hasan jamil','yyxxzz',40);
insert into logIn(userId,userName,password,age) values(1018,'md rafiq','xxzzyy',35);
insert into logIn(userId,userName,password,age) values(1019,'hasib rafiq','xyzzyx',38);
insert into logIn(userId,userName,password,age) values(1020,'md hasan','xxyyzz',26);

insert into student(userId,name,email,favouriteTopic) values(1011,'sakib hasan','x@gmail.com','math');
insert into student(userId,name,email,favouriteTopic) values(1012,'hasan mahmud','y@gmail.com','physics');
insert into student(userId,name,email,favouriteTopic) values(1014,'abid hasan','z@gmail.com','biology');
insert into student(userId,name,email,favouriteTopic) values(1013,'rajjak hossain','xx@gmail.com','biology');
insert into student(userId,name,email,favouriteTopic) values(1015,'abir shah','yy@gmail.com','physics');
insert into student(userId,name,email,favouriteTopic) values(1016,'hasib ahmed','yy@gmail.com','biology');
insert into student(userId,name,email,favouriteTopic) values(1017,'abir shahriar','yy@gmail.com','math');
insert into student(userId,name,email,favouriteTopic) values(1018,'anik shah','yy@gmail.com','chemistry');


insert into teacher(userId,name,email,uploadedCourseId,uploadedItem) values(1016,'monirujjaman','x@gmail.com',3110,'physics');
insert into teacher(userId,name,email,uploadedCourseId,uploadedItem) values(1017,'hasan jamil','y@gmail.com',3110,'math');
insert into teacher(userId,name,email,uploadedCourseId,uploadedItem) values(1019,'hasib rafiq','z@gmail.com',3110,'biology');
insert into teacher(userId,name,email,uploadedCourseId,uploadedItem) values(1018,'md rafiq','z@gmail.com',3110,'chemistry');
insert into teacher(userId,name,email,uploadedCourseId,uploadedItem) values(1012,'abdul rafiq','z@gmail.com',3110,'math');
insert into teacher(userId,name,email,uploadedCourseId,uploadedItem) values(1013,'md rafiquzzaman','z@gmail.com',3110,'chemistry');
insert into teacher(userId,name,email,uploadedCourseId,uploadedItem) values(1014,'md rafiq hasan','z@gmail.com',3110,'biology');
insert into teacher(userId,name,email,uploadedCourseId,uploadedItem) values(1015,'md sakib','z@gmail.com',3110,'physics');

insert into admin(userId,name,newTopic,deleteRequest) values(1020,'md hasan','xyzxyz','xyzxyz');

insert into courses(courseId,topicName,teacherName,description) values(3110,'physics','monirujjaman','xxyyzz');
insert into courses(courseId,topicName,teacherName,description) values(3101,'math','hasan jamil','xxyyzz');
insert into courses(courseId,topicName,teacherName,description) values(3109,'biology','hasib rafiq','xxyyzz');
insert into courses(courseId,topicName,teacherName,description) values(3103,'chemistry','md rafiq','xxyyzz');

insert into topics(courseId,studentId,teacherId) values(3110,1011,1016);
insert into topics(courseId,studentId,teacherId) values(3101,1012,1017);
insert into topics(courseId,studentId,teacherId) values(3103,1013,1018);

describe logIn;
describe student;
describe teacher;
describe admin;
describe courses;
describe topics;

select * from logIn
order by userId;
select * from student
order by userId;
select * from teacher
order by userId;
select * from admin;
select * from courses
order by courseId;
select * from topics
order by courseId;

