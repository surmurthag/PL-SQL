-- erreur_predf2.sql
SET SERVEROUTPUT ON 

DECLARE
   var NUMBER  := &svar;

BEGIN

   DBMS_OUTPUT.PUT_LINE 
   (' Racine carrée de '||var||' est '||SQRT(var));

EXCEPTION
WHEN VALUE_ERROR THEN
   DBMS_OUTPUT.PUT_LINE 
   ('Erreur... La valeur doit être un nombre positif ');

END;
/ 
