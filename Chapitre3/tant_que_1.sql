-- tant_que.sql
SET SERVEROUTPUT ON

DECLARE
   somme NUMBER(4) := 0;
   i NUMBER(3) := 1;

BEGIN	
 
   WHILE (i <= 100) LOOP
      somme := somme+ i; 
      i := i + 1; 
   END LOOP;
 
   DBMS_OUTPUT.PUT_LINE('La Somme est ' || somme);

END;
/
