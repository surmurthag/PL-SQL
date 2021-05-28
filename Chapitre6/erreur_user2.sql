-- erreur_user2.sql
SET SERVEROUTPUT ON 

DECLARE
   num_emp EMPLOYE.MATRICULE%TYPE  := &smat;
   total_heure NUMBER;
   nbre NUMBER  := 0;
-- déclaration d'une exception
   excep_emp1 EXCEPTION;
   excep_emp2 EXCEPTION;

BEGIN

   IF num_emp< 0 THEN
      RAISE excep_emp1;
   ELSE
   SELECT COUNT(*)
   INTO nbre
   FROM EMPLOYE
   WHERE MATRICULE = num_emp;
      IF  nbre=0 THEN
         RAISE excep_emp2;
      ELSE
         SELECT SUM(NBRE_H)
         INTO total_heure
         FROM TRAVAILLER
         WHERE MATRICULE = num_emp;
         DBMS_OUTPUT.PUT_LINE  
         ('L''emplyé a travaillé '|| total_heure||' heures');
     END IF;
   END IF;
   DBMS_OUTPUT.PUT_LINE 
   (' Aucune exception n''a été  soulevée');

EXCEPTION
WHEN excep_emp1 THEN
   DBMS_OUTPUT.PUT_LINE 
   ('La matricule doit être positive');
WHEN excep_emp2 THEN
   DBMS_OUTPUT.PUT_LINE 
   ('La matricule n''existe pas dans la table employé');

END;
/
