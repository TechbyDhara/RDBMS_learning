declare
    a number(10) := &a;
    b number(10) := &b;
    c number(10) := &c;
begin
   if  a>=b and a>=c then
       dbms_output.put_line('Maximum is : '|| a);
   elsif  b>=c and b>=a then
       dbms_output.put_line('Maximum is : '|| b);
   else
       dbms_output.put_line('Maximum is : '|| c);
end if;
end;
/

---------------------------OR --------------------------------------------
declare
    a number(10) := &a;
    b number(10) := &b;
    c number(10) := &c;
begin
       dbms_output.put_line('Maximum is : '|| greatest(a,b,c));
      dbms_output.put_line('Minimum is : '|| least(a,b,c));
end;
/
