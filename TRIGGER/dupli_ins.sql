create or replace trigger dupdept
before insert 
on dept
for each row 
declare
c number;
begin
select count(*) into c from dept where
:old.deptno=:new.deptno and :old.dname=:new.dname and
:old.loc=:new.loc;
if c>0 then
raise_application_error(-20001,'You can not insert same values!!!');
end if;
end;
/

create or replace trigger dupdept
before insert 
on dept
for each row 
declare
c number;
begin
select count(*) into c from dept where :old.dname=:new.dname and
:old.city=:new.city;
if c>0 then
raise_application_error(-20001,'You can not insert same values!!!');
end if;
end;
/