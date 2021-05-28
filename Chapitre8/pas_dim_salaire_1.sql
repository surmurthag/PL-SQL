-- pas_dim_salaire.sql
CREATE OR REPLACE TRIGGER pas_dim_salaire
BEFORE UPDATE ON EMPLOYE
FOR EACH ROW -- obligatoire si on utilise OLD et NEW

BEGIN
 
   IF (:OLD.SALAIRE > :NEW.SALAIRE)  THEN
      RAISE_APPLICATION_ERROR
      (-20105,'Pas de diminution de salaire !');
   END IF;    

END;
/
