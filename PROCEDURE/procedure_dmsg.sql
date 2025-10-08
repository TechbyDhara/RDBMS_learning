 create or replace procedure dmsg as
 begin
    dbms_output.put_line('test of procedure');
 end;
 /

 create or replace procedure dmsg2(d char) as
begin
   dbms_output.put_line('welcome '||d);
end;

 create or replace procedure dmsg3(d char) as
 begin
    if d is null then
      dbms_output.put_line('welcome guest!!');
    else
        dbms_output.put_line('welcome '||d);
 end;

 