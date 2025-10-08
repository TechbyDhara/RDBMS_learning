declare
    sno number(10) := &sno;
    name varchar2(10) := '&name';
    gender varchar2(10) := lower('&gender');
begin
    insert into hjd values(sno,name,gender);
    case gender
          when 'male' then
               insert into boys values(sno,name,gender);
          when 'female' then
               insert into girls values(sno,name,gender);
          else
              dbms_output.put_line('Invalid gender');
          end case;
end;