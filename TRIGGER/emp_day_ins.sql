 create or replace trigger wekins
    before insert
    on emp
    for each row
 declare
     e exception;
begin
    if to_char(sysdate,'DY') in ('SAT','SUN') then
        raise e;
     else
       dbms_output.put_line('record inserted successfully!');
     end if;
exception
     when e then
    raise_application_error(-20001,'weeked day you not insert');
  end;