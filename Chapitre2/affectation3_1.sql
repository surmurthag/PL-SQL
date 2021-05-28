-- affectation3.sql
SET SERVEROUTPUT ON 

DECLARE
   num NUMBER;
   nom_emp VARCHAR2(30) := 'THOMAS';

BEGIN

-- affectation des variables par l'instruction SELECT ... INTO
   SELECT MATRICULE INTO num
   FROM EMPLOYE
   WHERE ENOM= nom_emp;
   DBMS_OUTPUT.PUT_LINE
   ('L''employé '||nom_emp||' a pour matricule ' ||num);

END;
/
