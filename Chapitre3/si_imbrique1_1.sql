-- si_imbrique1.sql
SET SERVEROUTPUT ON

DECLARE 
-- déclaration des variables 
   quota TRAVAILLER.NBRE_H%TYPE; 
   bonus EMPLOYE.SALAIRE%TYPE; 
   sal EMPLOYE.SALAIRE%TYPE; 
   emp_id EMPLOYE.MATRICULE%TYPE :=7566; 

BEGIN 

-- sélection du nombre des heures de travail
   SELECT SUM(NBRE_H) 
   INTO quota
   FROM TRAVAILLER
   WHERE MATRICULE = emp_id;

-- sélection du salaire
   SELECT SALAIRE 
   INTO sal
   FROM EMPLOYE
   WHERE MATRICULE = emp_id;

-- détermination du bonus
   IF quota <= 100 THEN 
      bonus := 0.1*quota; 
   ELSE                                                            
      IF quota <= 200 THEN 
         bonus := 0.2*quota;
      ELSE 
         IF quota <= 300 THEN 
            bonus := 0.3*quota;
         ELSE
            bonus := 0.4*quota;
         END IF;                                                      
      END IF;                                                      
   END IF;
 
   DBMS_OUTPUT.PUT_LINE('Employé de Matricule' || emp_id ||' a le salaire ' || sal  || ' et travaille ' || quota || ' heures dans des projets');

-- modification du salaire
    UPDATE employe 
    SET salaire = salaire + bonus 
    WHERE MATRICULE = emp_id; 

-- sélection du salaire après modification
    SELECT SALAIRE 
    INTO sal
    FROM EMPLOYE
    WHERE MATRICULE = emp_id;

    DBMS_OUTPUT.PUT_LINE('Employé de Matricule ' || emp_id || ', 
 son nouveau salaire est ' || sal);
ROLLBACK;

END;
/
