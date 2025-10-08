create or replace trigger accman
before insert
 on transaction 
for each row
declare 
e exception;
bal number;
BEGIN
if :new.ttype = 'credit' THEN
update account set accbal=accbal+:new.tbal 
where accno=:new.accno;
elsif :new.ttype='debit' THEN
  select accbal into bal from account where accno=:new.accno;
  if :new.tbal > bal THEN
     raise e;
  ELSE
     update account set accbal=accbal-:new.tbal 
      where accno=:new.accno;
      end if;
    ELSE
    dbms_output.put_line('Invalid Transaction typeeeeeeeeeee!!!!!');
    end if;
    exception
    when e THEN
    raise_application_error(-20001,'You can not transaction.! Enter less balace..!!!!');
    end;







create table account (accno number(10) primary key,accname varchar2(30),accbal number(10));
create table transaction(accno number(10) references account(accno),ttype varchar2(10),tbal number(10))
