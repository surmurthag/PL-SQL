-- pour_curseur2.sql
SET SERVEROUTPUT ON

-- pas de d�claration du curseur
BEGIN

-- parcours du curseur 
 DBMS_OUTPUT.PUT_LINE('Les personnels du d�partement administratif  sont : ');
   FOR ligne IN 
       ( SELECT MATRICULE, ENOM
          FROM EMPLOYE, DEPARTEMENT
          WHERE DNOM = 'ADMINISTRATIF'
          AND EMPLOYE.NUMDEPT = DEPARTEMENT.NUMDEPT)
   LOOP
	    DBMS_OUTPUT.PUT_LINE('Matricule : ' || ligne.matricule || ' -- Nom : ' || ligne.enom);
   END LOOP;

END;
/
