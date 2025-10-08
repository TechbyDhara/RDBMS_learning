 declare
 dname emp.ename%type;
 edate number;
 cursor c1 is select ename, floor(months_between(sysdate,hiredate)/12) from emp;
 begin
 open c1;
 loop
 fetch c1 into dname,edate;
 exit when c1%notfound;
 dbms_output.put_line(dname||' '||edate);
 end loop;
 close c1;
 end;