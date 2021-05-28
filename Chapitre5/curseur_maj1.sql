-- curseur_maj1.sql
DECLARE
-- déclaration du curseur
   CURSOR emp_curseur IS
                        SELECT *
                        FROM EMPLOYE
                        FOR UPDATE; 
-- déclaration d'une variable enregistrement
	rec emp_curseur%ROWTYPE;

BEGIN

-- chargement du curseur 
   OPEN emp_curseur; 
   LOOP 
-- accès aux éléments du curseur
	   FETCH emp_curseur INTO rec; 
   EXIT WHEN emp_curseur%NOTFOUND;

-- mise à jour de la table employe
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
      IF rec.fonction= 'Secrétaire' THEN
        UPDATE EMPLOYE
        SET COMMISSION = SALAIRE * 0.1
        WHERE CURRENT OF emp_curseur;
      END IF;

   END LOOP;

END;
/ 
