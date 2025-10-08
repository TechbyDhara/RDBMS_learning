create or replace function msg(y number) return varchar as
begin
if mod(y,4)=0 then
return 'is leap year';
else
return 'is not leap year';
end if;
end;

declare
calfun varchar2(40);
year number;
begin
calfun:=msg(&year);
dbms_output.put_line(year||calfun);
end;
/