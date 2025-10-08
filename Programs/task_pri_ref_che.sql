 create table student(
 sno number(10) constraints nokey primary key,
 sname varchar2(10),
 sid number(10) constraints idkey references student(sno),
 smrk number(10) constraints chkey check(smrk<=100));


 insert into student values
     (&sno,&sname,&sid,&smrk);
        Enter value for sno: 1
        Enter value for sname: 'Hir'
        Enter value for sid: 1
        Enter value for smrk: 50
        old   2: (&sno,&sname,&sid,&smrk)
        new   2: (1,'Hir',1,50)
 //------------------->ERROR<----------------------------------------------------
//---ID--(idkey)>>
 SQL> insert into student values
  2  (&sno,&sname,&sid,&smrk);
Enter value for sno: 2
Enter value for sname: 'riya'
Enter value for sid: 7
Enter value for smrk: 30
old   2: (&sno,&sname,&sid,&smrk)
new   2: (2,'riya',7,30)
insert into student values
*
ERROR at line 1:
ORA-02291: integrity constraint (SYSTEM.IDKEY) violated - parent key not found
//---Primary--(nokey)
SQL> /
Enter value for sno: 1
Enter value for sname: 'om'
Enter value for sid: 4
Enter value for smrk: 56
old   2: (&sno,&sname,&sid,&smrk)
new   2: (1,'om',4,56)
insert into student values
*
ERROR at line 1:
ORA-00001: unique constraint (SYSTEM.NOKEY) violated


//---mark check---(chkey)>>
SQL> insert into student values
  2  (&sno,&sname,&sid,&smrk);
Enter value for sno: 2
Enter value for sname: 'lila'
Enter value for sid: 4
Enter value for smrk: 120
old   2: (&sno,&sname,&sid,&smrk)
new   2: (2,'lila',4,120)
insert into student values
*
ERROR at line 1:
ORA-02290: check constraint (SYSTEM.CHKEY) violated

