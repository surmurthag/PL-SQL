-- horaire_travail_emp.sql
CREATE OR REPLACE TRIGGER horaire_travail_emp
BEFORE INSERT OR UPDATE OR DELETE ON EMPLOYE

BEGIN

   IF (TO_CHAR(SYSDATE,'DY') IN('SAM', 'DIM'))
   OR (TO_CHAR(SYSDATE,'HH24') NOT BETWEEN 8 AND 18) THEN
      IF INSERTING THEN
       RAISE_APPLICATION_ERROR
       (-20101, 'Insertion interdite à cette heure');
      ELSIF DELETING THEN 
       RAISE_APPLICATION_ERROR
       (-20102, 'Suppression interdite à cette heure');
      ELSIF UPDATING('SALAIRE') THEN 
       RAISE_APPLICATION_ERROR
       (-20103, 'Modification salaire interdite à cette heure');
      ELSE
       RAISE_APPLICATION_ERROR
       (-20104, 'Modification interdite à cette heure');
      END IF;
   END IF;

END;
/
