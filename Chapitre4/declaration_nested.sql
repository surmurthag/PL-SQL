-- declaration_nested.sql
DECLARE
-- déclaration d'un type collection salaire_type 
   TYPE salaire_type IS TABLE OF employe.salaire%TYPE;

-- déclaration d'une variable table_salaire de type salaire_type 
   table_salaire  salaire_type;

BEGIN

   NULL;

END;
/
