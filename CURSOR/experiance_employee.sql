declare 
ddate emp.hiredate%type;
dname emp.ename%type;
dyear number;
cursor c1 is select ename,hiredate from emp;
begin
open c1;
loop
fetch c1 into dname,ddate;
dyear:=round(months_between(sysdate,ddate)/12);
exit when c1%notfound;
dbms_output.put_line(dname||' '||dyear);
end loop;
close  c1;
end;
