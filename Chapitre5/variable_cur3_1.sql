-- variable_cur3.sql
SET SERVEROUTPUT ON

DECLARE
-- déclaration type
   TYPE type_cur_emp IS REF CURSOR;
   TYPE type_tab_nom IS TABLE OF EMPLOYE.ENOM%TYPE;
   TYPE type_tab_salaire IS TABLE OF EMPLOYE.SALAIRE%TYPE;

-- déclaration des variables de type curseur
   cur_emp type_cur_emp;
   tab_nom type_tab_nom;
   tab_salaire type_tab_salaire;

BEGIN

   OPEN cur_emp FOR
                SELECT ENOM, salaire 
                FROM EMPLOYE
                WHERE NUMDEPT IN
                               ( SELECT NUMDEPT
                               FROM DEPARTEMENT
                               WHERE DNOM='FINANCE'
                                  OR DNOM='TECHNIQUE')
                ORDER BY salaire DESC;
-- récupération des données dans les tables
   FETCH cur_emp BULK COLLECT INTO tab_nom, tab_salaire;
   CLOSE cur_emp;
-- affichage des noms et salaires à partir de deux tables
   FOR i IN tab_nom.FIRST .. tab_nom.LAST
   LOOP
      DBMS_OUTPUT.PUT_LINE
      ('Nom = ' || tab_nom(i) || ', salaire = ' || tab_salaire(i));
   END LOOP;

END;
/
