-- definition_cur.sql
DECLARE
-- déclaration c1
   CURSOR c1 RETURN PROJET%ROWTYPE; 

-- déclaration et définition c2
   CURSOR c2 IS SELECT * 
                FROM EMPLOYE
                WHERE SALAIRE > 4000;

-- définition c1
   CURSOR c1 RETURN PROJET%ROWTYPE IS SELECT * 
                                      FROM PROJET;
-- déclaration c3
   CURSOR c3 RETURN TRAVAILLER%ROWTYPE;

-- définition c3
   CURSOR c3 IS SELECT * 
                FROM TRAVAILLER
                WHERE MATRICULE = 780;

BEGIN

   NULL;

END;
/
