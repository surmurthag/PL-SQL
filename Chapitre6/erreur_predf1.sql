-- erreur_predf1.sql
SET SERVEROUTPUT ON 

DECLARE
   num NUMBER;
   vnom VARCHAR2(30) := 'MARTIN';

BEGIN

   SELECT MATRICULE INTO num 
   FROM EMPLOYE 
   WHERE ENOM = vnom;

EXCEPTION
WHEN NO_DATA_FOUND THEN
    DBMS_OUTPUT.PUT_LINE
   ('Aucun employé porte le nom ' || vnom);
WHEN TOO_MANY_ROWS THEN
   DBMS_OUTPUT.PUT_LINE
  ('Plusieurs employés portent le nom'||vnom);
WHEN OTHERS THEN
   DBMS_OUTPUT.PUT_LINE
  ('Il y a un problème...');

END;
/
