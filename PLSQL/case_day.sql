declare
    a number(10) := &a;
begin
       case a
         	when 1 then  dbms_output.put_line('Today is :  Sunday');
	when 2 then  dbms_output.put_line('Today is :  Monday');
	when 3 then  dbms_output.put_line('Today is :  Tuesday');
	when 4 then  dbms_output.put_line('Today is :  Wednesday');
	when 5 then  dbms_output.put_line('Today is :  Thursday');
	when 6 then  dbms_output.put_line('Today is :  Friday');
	when 7 then  dbms_output.put_line('Today is :  Saturday');
end case;
end;
/
