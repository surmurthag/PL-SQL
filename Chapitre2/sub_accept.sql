-- sub_accept.sql
ACCEPT s_mat PROMPT 'Entrer Matricule Employé : '
SET SERVEROUTPUT ON 

DECLARE
   nom EMPLOYE.ENOM%TYPE;
   fonct EMPLOYE.FONCTION%TYPE;
   sal EMPLOYE.SALAIRE%TYPE;

BEGIN

   SELECT ENOM, FONCTION, SALAIRE
   INTO nom, fonct, sal
   FROM EMPLOYE
   WHERE MATRICULE = &s_mat;
   DBMS_OUTPUT.PUT_LINE ('L''employé de nom '||nom);
   DBMS_OUTPUT.PUT_LINE ('Sa fonction est  '|| fonct);
   DBMS_OUTPUT.PUT_LINE ('Son salaire est  '|| sal);

END;
/
