-- propagation2.sql
SET SERVEROUTPUT ON 

-- bloc extérieur
BEGIN

-- bloc interieur
   DECLARE
      chaine CHAR(4) := 'ABCDE';

   BEGIN

      DBMS_OUTPUT.PUT_LINE 
      ('Propagation des exceptions levées dans les 
        déclarations');

     EXCEPTION
      WHEN INVALID_NUMBER OR VALUE_ERROR THEN
         DBMS_OUTPUT.PUT_LINE('Erreur... bloc interieur');

      END;

EXCEPTION
WHEN INVALID_NUMBER OR VALUE_ERROR THEN
   DBMS_OUTPUT.PUT_LINE('Erreur... bloc exterieur');

END;
/
