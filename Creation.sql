drop table topics;
drop table teacher;
drop table student;
drop table admin;
drop table courses;
drop table logIn;


create table logIn
(
     userId number(5) not null,
     userName varchar(30),
     password varchar(10),
     age number(2),
     primary key(userId)
);
create table student(
	userId number(5) not null,
	name varchar(30) not null,
	email varchar(30),
	favouriteTopic varchar(30),
	primary key(userId),
	foreign key(userId) references logIn on delete cascade
);
create table admin(
	userId number(5) not null,
	name varchar(30) not null,
	newTopic varchar(30),
	deleteRequest varchar(30),
	primary key(userId),
	foreign key(userId) references logIn on delete cascade
);
create table teacher(
	userId number(5) not null,
	name varchar(30) not null,
	email varchar(30),
	uploadedCourseId number(10) not null,
	uploadedItem varchar(30),
	primary key(userId),
	foreign key(userId) references logIn on delete cascade
);
create table courses(
	courseId number(10) not null,
	topicName varchar(30),
	teacherName varchar(30),
	description varchar(30),
	primary key(courseId)
);
create table topics(
	courseId number(10) not null,
	studentId number(5) not null,
	teacherId number(5) not null,
	foreign key(courseId) references courses on delete cascade,
	foreign key(studentId) references student(userId) on delete cascade,
	foreign key(teacherId) references teacher(userId) on delete cascade
);