-- substitution.sql
SET SERVEROUTPUT ON 

DECLARE
   mat NUMBER := &s_mat; -- variable de substitution 
   -- On suppose que le matricule saisi est correct 
   nom EMPLOYE.ENOM%TYPE;
   fonct EMPLOYE.FONCTION%TYPE;
   sal EMPLOYE.SALAIRE%TYPE;

BEGIN

   SELECT ENOM, FONCTION, SALAIRE
   INTO nom, fonct, sal
   FROM EMPLOYE
   WHERE MATRICULE = mat;
   DBMS_OUTPUT.PUT_LINE ('L''employé de nom '||nom);
   DBMS_OUTPUT.PUT_LINE ('Sa fonction est  '|| fonct);
   DBMS_OUTPUT.PUT_LINE ('Son salaire est  '|| sal);

END;
/
