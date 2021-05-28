-- curseur_explicite3.sql
SET SERVEROUTPUT ON

DECLARE
-- déclaration du curseur
   CURSOR c IS SELECT ENOM, SALAIRE 
               FROM EMPLOYE
               WHERE ROWNUM < 7
               ORDER BY ENOM;
   vnom EMPLOYE.ENOM%TYPE;
   vsalaire EMPLOYE.SALAIRE%TYPE;

BEGIN

   OPEN c;
   LOOP
      FETCH c INTO vnom, vsalaire;
      IF c%FOUND THEN -- fetch retourne une ligne
        DBMS_OUTPUT.PUT_LINE
       ('Nom = ' || vnom || ', SALAIRE = ' || vsalaire);
      ELSE -- fetch ne retourne aucune ligne
        EXIT;
     END IF;
   END LOOP;

END;
/ 
