-- propagation7.sql
-- bloc ext�rieur
DECLARE
   erreur EXCEPTION;

BEGIN

-- bloc int�rieur
   BEGIN

      RAISE erreur;
   
   EXCEPTION
   WHEN erreur THEN
-- reraising une exception
      RAISE;
   
   END;
EXCEPTION
WHEN erreur THEN
   DBMS_OUTPUT.PUT_LINE('Erreur...');
END;
/
