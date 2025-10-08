create or replace trigger proman
before insert 
 on sales
for each row
declare
begin
:new.tprice=:new.price*:new.qty;
update product set 
proqty=(proqty-:new.qty) where proid=:new.proid;
end;
/


 create or replace trigger proman
 before insert
  on sales
 for each row
 declare
 pc number;
 e exception;
 begin
 --pc: =(select proqty from product where proid=:new.proid);
 select proqty into pc from product where proid=:new.proid;
 if :new.qty > pc  then
   raise e;
 elsif :new.qty < pc then
 :new.tprice :=:new.price*:new.qty;
 update product set
 proqty=proqty-:new.qty where proid=:new.proid;
 else
 dbms_output.put_line('Invalid Qty.....!!!!');
 end if;
 exception
 when e then
 raise_application_error(-20003,'this no of qty is not available......!!! Enter less qty');
 end;