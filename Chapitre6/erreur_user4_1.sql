-- erreur_user4.sql
DROP TABLE TEST;
CREATE TABLE TEST(NOMBRE NUMBER);

SET SERVEROUTPUT ON

DECLARE
   nbre NUMBER  := 0;
   INVALID_NUMBER EXCEPTION; -- redeclare l'exception prédéfinie

BEGIN

   INSERT INTO TEST VALUES(TO_NUMBER('999.00', '9G999'));

EXCEPTION
WHEN INVALID_NUMBER THEN
   DBMS_OUTPUT.PUT_LINE 
  ('La valeur 0 remplace le nombre non valide');
   INSERT INTO TEST VALUES(nbre);

END;
/
