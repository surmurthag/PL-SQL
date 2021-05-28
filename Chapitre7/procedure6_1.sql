-- procedure6.sql
SET SERVEROUTPUT ON

DECLARE
   sal1 EMPLOYE.SALAIRE%TYPE;
   mat1 EMPLOYE.MATRICULE%TYPE;
   nom  EMPLOYE.ENOM%TYPE;

   PROCEDURE maj_salaire
                       (
                         sal IN EMPLOYE.SALAIRE%TYPE,
                         mat IN EMPLOYE.MATRICULE %TYPE
                       ) IS

      BEGIN
        
        UPDATE EMPLOYE
        SET SALAIRE = sal
        WHERE MATRICULE = mat;
   
      END;
   
   BEGIN
      mat1 :=7800;
      SELECT ENOM, SALAIRE
      INTO nom, sal1
      FROM EMPLOYE
      WHERE MATRICULE = mat1;
      DBMS_OUTPUT.PUT_LINE(nom || ' a le salaire '||sal1);

     sal1 :=5500;
     DBMS_OUTPUT.PUT_LINE
     ('Appel de la procédure maj_salaire'); 
     maj_salaire( sal1, mat1);

     SELECT ENOM, SALAIRE
     INTO nom, sal1
     FROM EMPLOYE
     WHERE MATRICULE = mat1;
     DBMS_OUTPUT.PUT_LINE(nom || ' a le salaire '||sal1);
   
     ROLLBACK;

END;
/ 
