-- propagation5.sql
SET SERVEROUTPUT ON 

-- bloc ext�rieur
DECLARE
   erreur1 EXCEPTION;
   erreur2 EXCEPTION;

BEGIN

    NULL;
-- bloc int�rieur
   BEGIN
  
      NULL;
      RAISE erreur1;

   EXCEPTION
   WHEN erreur1 THEN
      RAISE erreur2;
   WHEN erreur2 THEN
      DBMS_OUTPUT.PUT_LINE('Erreur... bloc int�rieur');
   
   END;
EXCEPTION
WHEN erreur2 THEN
   DBMS_OUTPUT.PUT_LINE('Erreur... bloc ext�rieur');

END;
/
