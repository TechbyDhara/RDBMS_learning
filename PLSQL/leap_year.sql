declare
    year number(10) := &year;
begin
       if mod(year,4)=0 then
          dbms_output.put_line(year||' is leap year');
       else
          dbms_output.put_line(year||' is not a leap year');
end if;
end;
/
