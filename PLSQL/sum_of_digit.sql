DECLARE
    digit NUMBER := 0;
    num NUMBER(10) := &num; 
    sum1 NUMBER := 0;
BEGIN
    WHILE num > 0 LOOP
        digit := MOD(num, 10);
        sum1 := sum1 + digit;
        num := TRUNC(num / 10);
    END LOOP;
    DBMS_OUTPUT.PUT_LINE('Sum of digits: ' || 

sum1);
END;
/
