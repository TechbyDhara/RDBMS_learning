declare
  nm emp.ename%type;
  jb emp.job%type;
  cursor c1 is select ename,job from emp;
begin
  open c1;
  loop
   fetch c1 into nm,jb;
   exit when c1%notfound;
    dbms_output.put_line(nm||' '||jb);
   end loop;
close c1;
end;
/
