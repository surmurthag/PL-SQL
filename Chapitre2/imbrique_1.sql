-- imbrique.sql
SET SERVEROUTPUT ON 

-- bloc parent
DECLARE
   x INTEGER :=10;
BEGIN
   DBMS_OUTPUT.PUT_LINE('Bloc parent'); 
   DBMS_OUTPUT.PUT_LINE('x = ' || x);
 
-- sous bloc
   DECLARE
      y INTEGER;
   BEGIN

      x :=x+5;
      DBMS_OUTPUT.PUT_LINE('Sous Bloc'); 
      DBMS_OUTPUT.PUT_LINE('x = ' || x); 

   END;

 END;
/
