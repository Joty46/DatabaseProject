--transaction
commit;
delete from courses;
select * from courses;
rollback;
select * from courses;
--savepoint
savepoint first;
delete from courses where teacherName like '%rafiq';
savepoint second;
select * from courses;
rollback to first;
select * from courses;

--system time,date
select sysdate,current_date,systimestamp from dual;