-- enregistrement_simple2
DECLARE
-- d�claration d�un enregistrement type_temps 
   TYPE type_temps IS RECORD
          (
           datec DATE,
           jourc VARCHAR2(12),
           heurec VARCHAR2(8) := '00:00:00'
           );
-- d�claration d�une variable temps de type type_temps
   temps type_temps;

BEGIN

   NULL;

END;
/
