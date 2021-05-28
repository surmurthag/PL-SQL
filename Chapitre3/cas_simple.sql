-- cas_simple.sql
SET SERVEROUTPUT ON


DECLARE
   app CHAR(1);

BEGIN

   app := 'B';
-- affichage de la mention
   CASE app
       WHEN 'A' THEN DBMS_OUTPUT.PUT_LINE('Excellent');
       WHEN 'B' THEN DBMS_OUTPUT.PUT_LINE('Très bien');
       WHEN 'C' THEN DBMS_OUTPUT.PUT_LINE('Bien');
       WHEN 'D' THEN DBMS_OUTPUT.PUT_LINE('Passable');
       WHEN 'F' THEN DBMS_OUTPUT.PUT_LINE('Faible');
   ELSE 
       DBMS_OUTPUT.PUT_LINE(' appréciation inconnue !!!');
   END CASE;

END;
/
