-- curseur_explicite2.sql
DECLARE
-- déclaration du curseur
   CURSOR c IS SELECT DISTINCT EMPLACEMENT
               FROM TRAVAILLER T, PROJET P
               WHERE T.NUMPROJ = P.NUMPROJ 
               AND MATRICULE=7600
               ORDER BY EMPLACEMENT;
   ville PROJET.EMPLACEMENT%TYPE;
   
BEGIN

-- ISOPEN 
   IF NOT c%ISOPEN THEN
      OPEN c;
   END IF;
   FETCH c INTO ville;
   IF c%ISOPEN THEN
      CLOSE c;
   END IF;

END;
/
