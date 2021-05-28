-- curseur_parametre1.sql
SET SERVEROUTPUT ON

DECLARE
-- déclaration du curseur
   CURSOR emp_curseur( par_num EMPLOYE.MATRICULE%TYPE )IS
                       Select MATRICULE, ENOM, FONCTION
                       From EMPLOYE 
                       Where MATRICULE = par_num;
-- variables 
   vmat EMPLOYE.MATRICULE%TYPE;
   vnom EMPLOYE.ENOM%TYPE;
   vfonction EMPLOYE.FONCTION%TYPE; 
   
Begin  

-- ouverture du curseur avec passage du paramètre 7800
   OPEN emp_curseur(7800); 
   FETCH emp_curseur INTO vmat, vnom, vfonction;
   IF  emp_curseur%FOUND THEN  
       DBMS_OUTPUT.PUT_LINE
      ('Employé ' || TO_CHAR(vmat) || ' ' || vnom );
   ELSE
       DBMS_OUTPUT.PUT_LINE
     ('Employé ' || TO_CHAR(vmat) || ' n"existe pas ');
   END IF;
-- fermeture du curseur
   Close emp_curseur;

-- ouverture du curseur avec passage du paramètre 7600
   OPEN emp_curseur(7600); 
   FETCH emp_curseur INTO vmat, vnom, vfonction;
   IF  emp_curseur%FOUND THEN  
       DBMS_OUTPUT.PUT_LINE
      ('Employé ' || TO_CHAR(vmat) || ' ' || vnom );
   ELSE
       DBMS_OUTPUT.PUT_LINE
      ('Employé ' || TO_CHAR(vmat) || ' n"existe pas ');
   END IF;
-- fermeture du curseur
   Close emp_curseur;

END;  
/
