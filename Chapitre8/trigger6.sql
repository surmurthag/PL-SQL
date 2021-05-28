-- trigger6.sql
-- cr�ation de la table LOG
 
DROP TABLE LOG;
CREATE TABLE LOG (
                   MATRICULE_EMP  NUMBER(4),
                   NOM_EMP  VARCHAR2(30),
                   FONCTION_EMP VARCHAR2(30)
                 );
 
-- cr�ation du trigger
CREATE OR REPLACE TRIGGER log_trigger
AFTER DELETE ON EMPLOYE
FOR EACH ROW

DECLARE
  n INTEGER;

BEGIN

   INSERT INTO LOG 
   VALUES ( :OLD.MATRICULE,
            :OLD.ENOM,
            :OLD.FONCTION
          );
 
   SELECT COUNT(*) INTO n 
   FROM EMPLOYE;
   DBMS_OUTPUT.PUT_LINE('On a ' || n || ' employ�s.');

END;
/

-- suppression des employ�s 
DELETE FROM EMPLOYE;
