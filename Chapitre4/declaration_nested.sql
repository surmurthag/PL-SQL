-- declaration_nested.sql
DECLARE
-- d�claration d'un type collection salaire_type 
   TYPE salaire_type IS TABLE OF employe.salaire%TYPE;

-- d�claration d'une variable table_salaire de type salaire_type 
   table_salaire  salaire_type;

BEGIN

   NULL;

END;
/
