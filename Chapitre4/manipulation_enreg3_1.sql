-- manipulation_enreg3.sql
SET SERVEROUTPUT ON 

DECLARE
-- déclaration
   mat NUMBER := 7800; 
   enr EMPLOYE%ROWTYPE;

BEGIN

-- affectation
   SELECT *
   INTO enr
   FROM EMPLOYE
   WHERE MATRICULE = mat;

-- affichage
   DBMS_OUTPUT.PUT_LINE('L''employé de nom '||enr.enom);
   DBMS_OUTPUT.PUT_LINE('Sa fonction est  '|| enr.fonction);
   DBMS_OUTPUT.PUT_LINE('Son salaire est  '|| enr.salaire);

END;
/
