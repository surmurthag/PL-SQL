-- curseur_maj3.sql
DECLARE
-- déclaration du curseur
   CURSOR emp_curseur IS
                SELECT MATRICULE, SALAIRE
                FROM EMPLOYE, DEPARTEMENT
                WHERE DEPARTEMENT. NUMDEPT = EMPLOYE.NUMDEPT
                AND DNOM = 'ADMINISTRATIF'
                FOR UPDATE OF SALAIRE; 
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
       UPDATE EMPLOYE
       SET SALAIRE = SALAIRE * 1.4
       WHERE CURRENT OF emp_curseur;
   END LOOP;

-- fermeture du curseur
CLOSE emp_curseur;
ROLLBACK;

END;
/
