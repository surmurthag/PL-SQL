-- curseur_maj4.sql
DROP TABLE emp;
CREATE TABLE emp AS SELECT * FROM EMPLOYE;

DECLARE
-- déclaration du curseur
   CURSOR emp_curseur IS
                      SELECT ENOM, FONCTION, ROWID
                      FROM emp; -- pas de clause FOR UPDATE 
nom EMPLOYE.ENOM%TYPE;
fonct EMPLOYE.FONCTION%TYPE;
enrg_num UROWID;

BEGIN

-- ouverture du curseur
   OPEN emp_curseur;
   LOOP
      FETCH emp_curseur INTO nom, fonct, enrg_num;
   EXIT WHEN emp_curseur%NOTFOUND;
-- modification
      UPDATE emp
      SET SALAIRE = SALAIRE * 1.5
      WHERE ROWID = enrg_num; -- simulation de WHERE CURRENT OF
      COMMIT;
   END LOOP;
CLOSE emp_curseur;

END;
/
