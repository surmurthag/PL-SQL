-- enregistrement_simple3
DECLARE
-- d�claration d�un enregistrement type_temps 
-- avec la contrainte NOT NULL  
   TYPE type_temps IS RECORD
          (
           datec DATE NOT NULL,
           jourc VARCHAR2(12) NOT NULL,
           heurec VARCHAR2(8) := '00:00:00'
          );
-- d�claration d�une variable temps de type type_temps
   temps type_temps;

BEGIN

   NULL;

END;
/
