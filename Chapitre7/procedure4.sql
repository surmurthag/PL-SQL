-- procedure4.sql
SET SERVEROUTPUT ON;
DECLARE
   mat NUMBER(6)   := 7800;
   bonus NUMBER(6) := 100;
   merit NUMBER(4) := 50;
   nom EMPLOYE.ENOM%TYPE;
   sal EMPLOYE.SALAIRE%TYPE;

   PROCEDURE modifier_salaire(
                            mat_emp NUMBER, -- paramètre formel
                            montant NUMBER -- paramètre formel
                             ) IS
   BEGIN
 
     UPDATE EMPLOYE
     SET SALAIRE = SALAIRE + montant  
     WHERE MATRICULE = mat_emp; 

   END modifier_salaire;

BEGIN
   SELECT ENOM, SALAIRE
   INTO nom, sal
   FROM EMPLOYE
   WHERE MATRICULE = mat;
   DBMS_OUTPUT.PUT_LINE(nom || ' a le salaire '||sal) ; 
 
   DBMS_OUTPUT.PUT_LINE
   ('Appel de la procédure modifier_salaire') ; 
   modifier_salaire(mat, bonus); -- paramètres effectifs
 
   SELECT ENOM, SALAIRE
   INTO nom, sal
   FROM EMPLOYE
   WHERE MATRICULE = mat;
   DBMS_OUTPUT.PUT_LINE(nom || ' a le salaire '||sal) ; 

   DBMS_OUTPUT.PUT_LINE
   ('Appel de la procédure modifier_salaire') ; 
   modifier_salaire(mat, merit + bonus); -- paramètres effectifs
   
   SELECT ENOM, SALAIRE
   INTO nom, sal
   FROM EMPLOYE
   WHERE MATRICULE = mat;
   DBMS_OUTPUT.PUT_LINE(nom || ' a le salaire '||sal) ;

  ROLLBACK;

END;
/  
