-- pour_curseur1.sql
SET SERVEROUTPUT ON

DECLARE
-- déclaration du curseur
   CURSOR personnel( vdnom varchar2 ) 
         IS SELECT MATRICULE, ENOM
            FROM EMPLOYE, DEPARTEMENT
            WHERE DNOM = vdnom
            AND EMPLOYE.NUMDEPT = DEPARTEMENT.NUMDEPT;

BEGIN

-- parcours du curseur 
   DBMS_OUTPUT.PUT_LINE('Les personnels du département finance  sont : ');
   FOR ligne IN personnel('FINANCE')LOOP
	DBMS_OUTPUT.PUT_LINE('Matricule : ' || ligne.matricule || ' -- Nom : ' || ligne.enom);
   END LOOP;
END;
/
