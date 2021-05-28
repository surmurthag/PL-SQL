-- erreur_user1.sql
SET SERVEROUTPUT ON 

DECLARE 
-- d�claration d'une exception
excep_dept EXCEPTION;

BEGIN

   UPDATE DEPARTEMENT
   SET DNOM = '&nom_dept'
   WHERE NUMDEPT = &num_dept;

-- d�clenchement de l'exception
   IF SQL%NOTFOUND THEN
      RAISE excep_dept;
   END IF;
   COMMIT;
   
   EXCEPTION
-- traitement de l'exception
   WHEN excep_dept THEN
       DBMS_OUTPUT.PUT_LINE('Num�ro d�partement invalide');

END;
/
