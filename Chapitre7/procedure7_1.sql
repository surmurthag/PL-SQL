-- procedure7.sql
SET SERVEROUTPUT ON

DECLARE

   mat EMPLOYE.MATRICULE%TYPE := 7800;
   nom  EMPLOYE.ENOM%TYPE;
   fonct EMPLOYE.FONCTION%TYPE;
   
BEGIN

-- appel de la proc�dure     
   trouver_emp(mat, nom, fonct);
   DBMS_OUTPUT.PUT_LINE('L''employ� de matricule ' || mat);
   DBMS_OUTPUT.PUT_LINE('Son nom est ' || nom);
   DBMS_OUTPUT.PUT_LINE('Sa fonction est ' || fonct);

END;
/ 
