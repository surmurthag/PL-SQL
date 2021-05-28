-- saut_contre.sql
SET SERVEROUTPUT ON

DECLARE
   i INTEGER := 1;

BEGIN

   GOTO etiquette_IF;
   IF MOD(i,2) = 0 THEN
      <<etiquette_IF>>
      i := i + 1;
   END IF;
 
END;
/
