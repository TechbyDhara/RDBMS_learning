 declare
 name1 emp.ename%type;
 loc1 dept.loc%type;
 cursor c1 is select e.ename, d.loc from emp e, dept d where d.deptno=e.deptno and
 d.loc='&loc1';
 begin
 open c1;
 loop
 fetch c1 into name1, loc1;
 exit when c1%notfound;
 dbms_output.put_line(name1||' '||loc1);
 end loop;
 close c1;
 end;