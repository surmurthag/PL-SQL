-- curseur_maj1.sql
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
         SET SALAIRE = SALAIRE * 1.2
         WHERE CURRENT OF emp_curseur;
      END IF;
      IF rec.fonction= 'ANALYSTE' THEN
         UPDATE EMPLOYE
         SET SALAIRE = SALAIRE * 1.3
         WHERE CURRENT OF emp_curseur;
      END IF;
      IF rec.fonction= 'Secr�taire' THEN
        UPDATE EMPLOYE
        SET COMMISSION = SALAIRE * 0.1
        WHERE CURRENT OF emp_curseur;
      END IF;

   END LOOP;

END;
/ 
