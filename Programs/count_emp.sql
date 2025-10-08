 
 declare
 ddept emp.deptno%type;
 dd number;
 cursor c1 is select deptno,count(ename) from emp group by deptno;
 begin
 open c1;
 loop
 fetch c1 into ddept,dd;
 exit when c1%notfound;
 dbms_output.put_line(ddept||' '||dd);
 end loop;
 close c1;
 end;

 