-- si_sinonsi1.sql
SET SERVEROUTPUT ON

DECLARE 
-- d?claration des variables
   quota TRAVAILLER.NBRE_H%TYPE; 
   bonus EMPLOYE.SALAIRE%TYPE; 
   sal EMPLOYE.SALAIRE%TYPE; 
   emp_id EMPLOYE.MATRICULE%TYPE :=7566; 

BEGIN 

-- s?lection de nombre des heures de travail
   SELECT SUM(NBRE_H) 
   INTO quota
   FROM TRAVAILLER
   WHERE MATRICULE = emp_id;
 
-- s?lection de salaire
   SELECT SALAIRE 
   INTO sal
   FROM EMPLOYE
   WHERE MATRICULE = emp_id;

-- d?termination de bonus
   IF quota <= 100 THEN 
      bonus := 0.1*quota; 
   ELSIF quota <= 200 THEN 
      bonus := 0.2*quota;
   ELSIF quota <= 300 THEN 
      bonus := 0.3*quota;
   ELSE
      bonus := 0.4*quota;
   END IF;                                                      
 
   DBMS_OUTPUT.PUT_LINE('Employ? de Matricule' || emp_id ||' a le salaire ' || sal  || ' et travaille ' || quota || ' heures dans des projets');

-- modification de salaire
   UPDATE EMPLOYE 
   SET SALAIRE = SALAIRE + bonus 
   WHERE MATRICULE = emp_id; 

-- s?lection de salaire apr?s modification
   SELECT SALAIRE 
   INTO sal
   FROM EMPLOYE
   WHERE MATRICULE = emp_id;

   DBMS_OUTPUT.PUT_LINE('Employ? de Matricule ' || emp_id || ', 
 son nouveau salaire est ' || sal);

   ROLLBACK;
END;
/

