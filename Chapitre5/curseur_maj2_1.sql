-- curseur_maj2.sql
DECLARE
-- d�claration du curseur
   CURSOR emp_curseur IS
                        SELECT *
                        FROM EMPLOYE
                        FOR UPDATE; 
-- d�claration d'une variable enregistrement
	rec emp_curseur%ROWTYPE;

BEGIN

-- chargement du curseur 
   OPEN emp_curseur; 
   LOOP 	
-- acc�s aux �l�ments du curseur
	   FETCH emp_curseur INTO rec; 
   EXIT WHEN emp_curseur%NOTFOUND;

-- mise � jour de la table employe
      IF rec.fonction= 'MANAGER' THEN
         UPDATE EMPLOYE
         SET SALAIRE = SALAIRE * 0
         WHERE CURRENT OF emp_curseur;
      END IF;
-- validation
COMMIT;
   END LOOP;

-- fermeture du curseur
CLOSE emp_curseur;

END;
/ 
