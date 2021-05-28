-- trigger6.sql
-- création de la table LOG
 
DROP TABLE LOG;
CREATE TABLE LOG (
                   MATRICULE_EMP  NUMBER(4),
                   NOM_EMP  VARCHAR2(30),
                   FONCTION_EMP VARCHAR2(30)
                 );
 
-- création du trigger
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
   DBMS_OUTPUT.PUT_LINE('On a ' || n || ' employés.');

END;
/

-- suppression des employés 
DELETE FROM EMPLOYE;
