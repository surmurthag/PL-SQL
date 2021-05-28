-- trouver_emp.sql
CREATE OR REPLACE PROCEDURE trouver_emp
                          (
                            mat_emp IN NUMBER,
                            nom_emp OUT VARCHAR2,
                            fonct_emp OUT VARCHAR2
                          ) AS

BEGIN

   SELECT ENOM, FONCTION
   INTO nom_emp, fonct_emp
   FROM EMPLOYE
   WHERE MATRICULE = mat_emp;

EXCEPTION
WHEN OTHERS THEN
   DBMS_OUTPUT.PUT_LINE(mat_emp||'Erreur  de recherche …');
    
END trouver_emp;
/
