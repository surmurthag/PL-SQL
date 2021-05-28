-- package_oracle1.sql
SET SERVEROUTPUT ON

DECLARE
   CURSOR c_employe IS
                   SELECT * From EMPLOYE;
   BEGIN

-- ouverture du tampon 
   DBMS_OUTPUT.ENABLE(1000000);
   FOR C IN c_employe LOOP
-- ligne avec caractère fin de ligne 
      DBMS_OUTPUT.PUT_LINE('Employé -> ' || C.MATRICULE);
-- ligne composée de différents champs --
       DBMS_OUTPUT.PUT(' ' || 'Nom = ' || C.ENOM);
       DBMS_OUTPUT.PUT(' ' || 'Fonction = ' || C.FONCTION);
       DBMS_OUTPUT.PUT(' ' || 'Dept= ' || C. NUMDEPT);
       DBMS_OUTPUT.PUT(' ' || 'Salaire = ' || C.SALAIRE);
 -- saut de ligne 
       DBMS_OUTPUT.NEW_LINE;         
   END LOOP;
 
END;
 /
