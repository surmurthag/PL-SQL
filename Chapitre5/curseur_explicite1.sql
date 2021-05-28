-- curseur_explicite1.sql 
SET SERVEROUTPUT ON

DECLARE
-- déclaration du curseur
   CURSOR c IS SELECT DISTINCT EMPLACEMENT
               FROM TRAVAILLER T, PROJET P
               WHERE T.NUMPROJ = P.NUMPROJ 
               AND MATRICULE=7600
               ORDER BY EMPLACEMENT;
   ville PROJET.EMPLACEMENT%TYPE;
   nbre_ligne INTEGER; 

BEGIN

-- nombre de lignes du curseur
   SELECT COUNT(DISTINCT EMPLACEMENT) INTO nbre_ligne
   FROM TRAVAILLER T, PROJET P
   WHERE T.NUMPROJ = P.NUMPROJ 
   AND MATRICULE=7600;

-- ouverture du curseur
   OPEN c;

-- lecture du curseur
   DBMS_OUTPUT.PUT_LINE('L''employé de matricule 7600 a travaillé dans les villes :');
   FOR i IN 1..nbre_ligne LOOP
      FETCH c INTO ville;
      DBMS_OUTPUT.PUT_LINE('-- ' || ville);
   END LOOP;

-- fermeture du curseur
   CLOSE c;

END;
/
