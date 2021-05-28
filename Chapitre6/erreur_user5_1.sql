-- erreur_user5.sql
DROP TABLE TEST;
CREATE TABLE TEST(NOMBRE NUMBER);

DECLARE
   nbre NUMBER  := 0;
   INVALID_NUMBER EXCEPTION; -- redéclare l'exception prédéfinie
BEGIN
   INSERT INTO TEST VALUES(TO_NUMBER('999.00', '9G999'));
EXCEPTION
WHEN STANDARD.INVALID_NUMBER THEN
   DBMS_OUTPUT.PUT_LINE 
   ('La valeur 0 remplace le nombre non valide');
   INSERT INTO TEST VALUES(nbre);
END;
/
