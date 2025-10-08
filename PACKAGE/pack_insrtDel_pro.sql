
 create or replace package dpak as
 procedure dinsert(eno number,enm varchar2,job varchar2,mgr number,
 hiredate date,sal number,comm number,deptno number);
 procedure ddelete(eno number);
 end dpak;
 /


create or replace package body dpak as

procedure dinsert(eno number,enm varchar2,job varchar2,mgr number,
 hiredate date,sal number,comm number,deptno number); as
begin
insert into emp(empno,ename,job,mgr,hiredate,sal,comm,deptno) 
values(eno,enm,job,mgr,hiredate,sal,comm,deptno);
dbms_output.put_line('Inserted values successfully!!');
end dinsert;

procedure ddelete(eno number) as
begin
delete from emp where empno=eno;
dbms_output.put_line('Deleted successfully!!');
end ddelete;
end dpak;
/

 exec dpak.dinsert(7777,'DHARA','MANAGER',7666,'23-NOV-25',60000,300,10)
  exec dpak.ddelete(7369)