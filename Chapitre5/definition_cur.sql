-- definition_cur.sql
DECLARE
-- d�claration c1
   CURSOR c1 RETURN PROJET%ROWTYPE; 

-- d�claration et d�finition c2
   CURSOR c2 IS SELECT * 
                FROM EMPLOYE
                WHERE SALAIRE > 4000;

-- d�finition c1
   CURSOR c1 RETURN PROJET%ROWTYPE IS SELECT * 
                                      FROM PROJET;
-- d�claration c3
   CURSOR c3 RETURN TRAVAILLER%ROWTYPE;

-- d�finition c3
   CURSOR c3 IS SELECT * 
                FROM TRAVAILLER
                WHERE MATRICULE = 780;

BEGIN

   NULL;

END;
/
