declare
  d emp%rowtype;
  cursor c1 is select distinct(job) from emp;
begin
  open c1;
  loop
   fetch c1 into d.jb;
   exit when c1%notfound;
    dbms_output.put_line(jb);
   end loop;
close c1;
end;
/
