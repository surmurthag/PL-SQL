-- pour.sql
SET SERVEROUTPUT ON

DECLARE
   somme NUMBER(4) := 0;

BEGIN	
 
   FOR i IN 1..100 LOOP
      somme := somme+ i; 
   END LOOP;
 
   DBMS_OUTPUT.PUT_LINE('La Somme est ' || somme);

END;
/
