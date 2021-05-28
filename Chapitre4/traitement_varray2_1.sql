--traitement_varray2.sql
SET SERVEROUTPUT ON 

DECLARE
-- déclaration et initialisation de la table
   TYPE tableau_type IS VARRAY(10) OF NUMBER;
   tableau tableau_type := tableau_type(0, 2, 4, 6, 8, 10);

BEGIN

-- affichage
   DBMS_OUTPUT.PUT_LINE('tableau.COUNT = '||tableau.COUNT);
   DBMS_OUTPUT.PUT_LINE('tableau.LIMIT = '||tableau.LIMIT);
   DBMS_OUTPUT.PUT_LINE('tableau.FIRST = '||tableau.FIRST);
   DBMS_OUTPUT.PUT_LINE('tableau.LAST = '||tableau.LAST);

-- augmentation de taille
   tableau.EXTEND(2, 4);

-- affichage 
   DBMS_OUTPUT.PUT_LINE('tableau.LAST = '||tableau.LAST);
   DBMS_OUTPUT.PUT_LINE('tableau('||tableau.LAST||') = '||
   tableau(tableau.LAST));

-- suppression des éléments
   tableau.TRIM(2);

-- affichage
   DBMS_OUTPUT.PUT_LINE('tableau.LAST = '||tableau.LAST);

END;
/
