-- erreur2.sql
SET SERVEROUTPUT ON; 

DECLARE
   var1 INTEGER  := &svar1;
   var2 INTEGER  := &svar2;
   resultat NUMBER;

BEGIN

   resultat  := var1 / var2;
   DBMS_OUTPUT.PUT_LINE 
  (var1 ||' / '||var2 || '  = ' || resultat);

EXCEPTION
   WHEN ZERO_DIVIDE THEN
        DBMS_OUTPUT.PUT_LINE 
        ('La division par zéro est impossible'); 

END;
/
