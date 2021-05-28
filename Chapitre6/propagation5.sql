-- propagation5.sql
SET SERVEROUTPUT ON 

-- bloc extérieur
DECLARE
   erreur1 EXCEPTION;
   erreur2 EXCEPTION;

BEGIN

    NULL;
-- bloc intérieur
   BEGIN
  
      NULL;
      RAISE erreur1;

   EXCEPTION
   WHEN erreur1 THEN
      RAISE erreur2;
   WHEN erreur2 THEN
      DBMS_OUTPUT.PUT_LINE('Erreur... bloc intérieur');
   
   END;
EXCEPTION
WHEN erreur2 THEN
   DBMS_OUTPUT.PUT_LINE('Erreur... bloc extérieur');

END;
/
