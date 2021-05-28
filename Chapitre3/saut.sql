-- saut.sql
SET SERVEROUTPUT ON

DECLARE
   i INTEGER := 1;
   r number(3,2);

BEGIN

   <<Boucle>>
    WHILE i < 10 LOOP
       r := sqrt(i);
       DBMS_OUTPUT.PUT_LINE('la racine carrée de : ' || i || 
       ' est ' || r);
       i := i + 1;
       IF MOD(i,2) = 0 THEN
          i := i + 1;
          GOTO Boucle;
       END IF;    
    END LOOP;

END;
/
