 declare
  d emp%rowtype;
  cursor c1 is select deptno,ename,job,sal from emp where sal in(select max(sal) from emp group by deptno having deptno=&deptno);
  begin
  open c1;
  loop
  fetch c1 into d.deptno,d.ename,d.job,d.sal;
  exit when c1%notfound;
  dbms_output.put_line(d.deptno||' '||d.ename||' '||d.job||' '||d.sal);
  end loop;
  close c1;
  end;                  