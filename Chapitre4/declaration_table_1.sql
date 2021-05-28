-- declaration_table.sql
DECLARE
-- déclaration d'un type collection nom_type 
   TYPE nom_type IS TABLE OF employe.enom%TYPE
   INDEX BY BINARY_INTEGER;
 
-- déclaration d'une variable table_nom de type nom_type 
  table_nom  nom_type;

BEGIN

   NULL;

END;
/
