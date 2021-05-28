-- affectation1.sql
SET SERVEROUTPUT ON 

DECLARE
   a INTEGER;
   b INTEGER;
   c INTEGER;
      
BEGIN
  
-- affectation des variables
   a := 1;
   DBMS_OUTPUT.PUT_LINE('A = '|| a);
   b := a+3;
   DBMS_OUTPUT.PUT_LINE('B = '|| b);
   a := 3;
   DBMS_OUTPUT.PUT_LINE('A = '|| a);
   b := 5;
   DBMS_OUTPUT.PUT_LINE('B = '|| b);
   c := a+b;
   DBMS_OUTPUT.PUT_LINE('C = '|| c);
   c := b-a;
   DBMS_OUTPUT.PUT_LINE('C = '|| c);
   
END;
/
