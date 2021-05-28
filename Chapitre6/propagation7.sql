-- propagation7.sql
-- bloc extérieur
DECLARE
   erreur EXCEPTION;

BEGIN

-- bloc intérieur
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
