-- propagation1.sql
SET SERVEROUTPUT ON 

DECLARE
   chaine CHAR(4) := 'ABCDE';

BEGIN

   DBMS_OUTPUT.PUT_LINE 
  ('Propagation des exceptions lev�es dans les d�clarations');

EXCEPTION
WHEN INVALID_NUMBER OR VALUE_ERROR THEN
   DBMS_OUTPUT.PUT_LINE('Erreur...');

END;
/
