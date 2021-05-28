-- propagation4.sql
SET SERVEROUTPUT ON 

-- bloc extérieur
BEGIN
 
-- bloc intérieur
   DECLARE
      chaine CHAR(4) := 'ABCD';

   BEGIN

      chaine  :=  '1000000';
      DBMS_OUTPUT.PUT_LINE('chaine = ' || chaine);

   EXCEPTION
   WHEN INVALID_NUMBER OR VALUE_ERROR THEN
-- erreur dans la section d'exception
      chaine :=  'ABCDX';
      DBMS_OUTPUT.PUT_LINE('Erreur... bloc intérieur');

   END;

   EXCEPTION
      WHEN INVALID_NUMBER OR VALUE_ERROR THEN
      DBMS_OUTPUT.PUT_LINE('Erreur... bloc extérieur');

END;
/
