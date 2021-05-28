-- interdire_suppression.sql
CREATE OR REPLACE TRIGGER interdire_suppression
BEFORE DROP ON DATABASE

BEGIN

   IF TO_CHAR(SYSDATE,'DAY') IN ('SAMEDI','DIMANCHE') THEN
      RAISE_APPLICATION_ERROR
      (-20106, 'D�sol� pas de destruction ce jour�');
   END IF;

END;
/
