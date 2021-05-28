-- traitement_table1.sql
SET SERVEROUTPUT ON

DECLARE
-- déclaration 
   TYPE racine_type IS TABLE OF NUMBER(4,2)
   INDEX BY BINARY_INTEGER;
   table_racine  racine_type;

BEGIN

-- remplissage du table
   FOR i in 1..10 LOOP
     table_racine(i) :=sqrt(i);
   END LOOP;

-- affichage du table
   FOR i in 1..10 LOOP
      DBMS_OUTPUT.PUT_LINE('Racine carrée de '||i||' est '|| 
      table_racine(i));
   END LOOP;

END;
/
