-- nil.sql
DECLARE
   fonct EMPLOYE.FONCTION%TYPE;
   mat EMPLOYE.MATRICULE%TYPE :=7566;

BEGIN
-- s�lection de l'employ� 
   SELECT FONCTION INTO fonct
   FROM EMPLOYE
   WHERE MATRICULE = mat;
-- modification de la commission si la fonction est MANAGER
   IF fonct = 'MANAGER' THEN
      UPDATE EMPLOYE
      SET COMMISSION = COMMISSION * 2;
   ELSE
      NULL; 
   END IF;
   ROLLBACK;

END;
/
