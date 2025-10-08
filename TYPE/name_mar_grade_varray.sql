 declare
 type nm is varray(5) of varchar2(10);
 type mk is varray(5) of number(10);
 type g is varray(5) of varchar2(5);
 sname nm;
 marks mk;
 grade g;
 begin
 sname := nm('niya','Riya','Jiya','Tiya','Diya');
 marks := mk(23,54,34,65,45);
 grade := g('A++','B+','A+','A','B+');
 dbms_output.put_line('Name  Marks  Grade');
 for i in 1..5
 loop
 dbms_output.put_line(sname(i) || '    '||marks(i)||'     '||grade(i));
 end loop;
 end;

/
