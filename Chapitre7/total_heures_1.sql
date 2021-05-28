-- total_heures.sql
CREATE OR REPLACE FUNCTION total_heures 
                         (mat IN EMPLOYE.MATRICULE%TYPE)
RETURN NUMBER
IS
 
  total NUMBER;

BEGIN 

   SELECT SUM(NBRE_H)
   INTO total
   FROM TRAVAILLER
   WHERE MATRICULE = mat;

RETURN (total);

END;
/
