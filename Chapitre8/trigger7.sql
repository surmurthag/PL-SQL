-- trigger7.sql
-- création de la table SALAIRE_EMP
 
DROP TABLE SALAIRE_EMP;
CREATE TABLE SALAIRE_EMP 
  (
    MATRICULE NUMBER(4) NOT NULL,
    DATE_MAJ DATE   NOT NULL,
    SALAIRE NUMBER(8,2) NOT NULL,
    CONSTRAINT pk_SALAIRE_EMP PRIMARY KEY(MATRICULE, DATE_MAJ),
    CONSTRAINT fk_SALAIRE_EMP FOREIGN KEY(MATRICULE)
    REFERENCES EMPLOYE(MATRICULE) ON DELETE CASCADE
   )
/
-- création trigger composé maintenir_salaire
CREATE OR REPLACE TRIGGER maintenir_salaire
FOR UPDATE OF SALAIRE ON EMPLOYE
COMPOUND TRIGGER
-- déclaration
   seuil CONSTANT SIMPLE_INTEGER := 7;

   TYPE tab_salaire IS TABLE OF SALAIRE_EMP%ROWTYPE INDEX BY    
   SIMPLE_INTEGER;
   les_salaires  tab_salaire;
   idx  SIMPLE_INTEGER := 0;

   PROCEDURE traiter_array IS
      n CONSTANT SIMPLE_INTEGER := les_salaires.count();
   BEGIN
      FORALL j IN 1..n
        INSERT INTO SALAIRE_EMP VALUES les_salaires(j);
      les_salaires.delete();
      idx := 0;
      DBMS_OUTPUT.PUT_LINE('Traité ' || n || ' lignes');
   END traiter_array;

  -- section AFTER EACH ROW 
  AFTER EACH ROW IS
  BEGIN
     idx := idx + 1;
     les_salaires(idx).MATRICULE := :NEW.MATRICULE;
     les_salaires(idx).DATE_MAJ := SYSTIMESTAMP;
     les_salaires(idx).SALAIRE := :NEW.SALAIRE;
     IF idx >= seuil THEN
       traiter_array();
     END IF;
  END AFTER EACH ROW;

  -- section AFTER STATEMENT

  AFTER STATEMENT IS
  BEGIN
    traiter_array();
  END AFTER STATEMENT;

END maintenir_salaire;
/
