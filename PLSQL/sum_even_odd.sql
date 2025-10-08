DECLARE
    digit NUMBER := 0;
    num NUMBER(10) := &num; 
    esum1 NUMBER := 0;
    osum1 number := 0;
BEGIN
    WHILE num > 0 LOOP
        digit := MOD(num, 10);
        if mod(digit,2) = 0 then
            osum1 := osum1 + digit;
        ELSE
             esum1 := esum1 + digit;
        num := TRUNC(num / 10);
    END LOOP;
    DBMS_OUTPUT.PUT_LINE('Sum of Even digits: ' || esum1);
    DBMS_OUTPUT.PUT_LINE('Sum of Odd digits: ' || osum1);
END;
/
