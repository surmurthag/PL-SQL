-- erreur1.sql
SET SERVEROUTPUT ON; 

DECLARE
   var1 INTEGER  := &svar1;
   var2 INTEGER  := &svar2;
   resultat NUMBER;

BEGIN

   resultat = var1 / var2;
   DBMS_OUTPUT.PUT_LINE 
   (var1 ||' / '||var2 || '  = ' || resultat);

END;
/
