 
  sname char(20);
  age number(10);
 begin
 sname:='&sname';
 age:='&age';
 dbms_output.put_line('Your Name:');
 dbms_output.put_line(sname);
 dbms_output.put_line('Your Age:');
 dbms_output.put_line(age);
 end;



 declare
    a number(10);
    b number(10);
begin
a:='&a';
b:='&b';
dbms_output.put_line('Addition:');
dbms_output.put_line(a+b);
dbms_output.put_line('Subtraction:');
dbms_output.put_line(a-b);
dbms_output.put_line('Multiplication:');
dbms_output.put_line(a*b);
dbms_output.put_line('Division:');
dbms_output.put_line(a/b);
end;


declare
    a number(10);
    b number(10);
begin
a:='&a';
b:='&b';
dbms_output.put_line('Arithmetic \\n Operation');
dbms_output.new_line;
dbms_output.put_line('Addition:'||(a+b));
dbms_output.put_line('Subtraction:'||(a-b));
dbms_output.put_line('Multiplication:'||(a*b));
dbms_output.put_line('Division:'||(a/b));
end;