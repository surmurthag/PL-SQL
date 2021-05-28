-- package_oracle1.sql
SET SERVEROUTPUT ON

DECLARE
   CURSOR c_employe IS
                   SELECT * From EMPLOYE;
   BEGIN

-- ouverture du tampon 
   DBMS_OUTPUT.ENABLE(1000000);
   FOR C IN c_employe LOOP
-- ligne avec caract�re fin de ligne 
      DBMS_OUTPUT.PUT_LINE('Employ� -> ' || C.MATRICULE);
-- ligne compos�e de diff�rents champs --
       DBMS_OUTPUT.PUT(' ' || 'Nom = ' || C.ENOM);
       DBMS_OUTPUT.PUT(' ' || 'Fonction = ' || C.FONCTION);
       DBMS_OUTPUT.PUT(' ' || 'Dept= ' || C. NUMDEPT);
       DBMS_OUTPUT.PUT(' ' || 'Salaire = ' || C.SALAIRE);
 -- saut de ligne 
       DBMS_OUTPUT.NEW_LINE;         
   END LOOP;
 
END;
 /
