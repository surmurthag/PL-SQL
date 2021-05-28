-- priorite.sql
SET SERVEROUTPUT ON 

DECLARE
   a INTEGER := 1+3**3;
   b INTEGER := (1+3)**3;
   c INTEGER := ((1+3)*(4+5))/6;
   d INTEGER := 2**2*3**2;
   e INTEGER := (2**2)*(3**2);

BEGIN

   DBMS_OUTPUT.PUT_LINE('a = ' || a);
   DBMS_OUTPUT.PUT_LINE('b = ' || b);
   DBMS_OUTPUT.PUT_LINE('c = ' || c);
   DBMS_OUTPUT.PUT_LINE('d = ' || d);
   DBMS_OUTPUT.PUT_LINE('e = ' || e);

END;
/
