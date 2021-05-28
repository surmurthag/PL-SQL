-- propagation2.sql
SET SERVEROUTPUT ON 

-- bloc ext�rieur
BEGIN

-- bloc interieur
   DECLARE
      chaine CHAR(4) := 'ABCDE';

   BEGIN

      DBMS_OUTPUT.PUT_LINE 
      ('Propagation des exceptions lev�es dans les 
        d�clarations');

     EXCEPTION
      WHEN INVALID_NUMBER OR VALUE_ERROR THEN
         DBMS_OUTPUT.PUT_LINE('Erreur... bloc interieur');

      END;

EXCEPTION
WHEN INVALID_NUMBER OR VALUE_ERROR THEN
   DBMS_OUTPUT.PUT_LINE('Erreur... bloc exterieur');

END;
/
