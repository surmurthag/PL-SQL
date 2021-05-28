-- trigger5.sql
CREATE OR REPLACE VIEW travail_emp AS
   SELECT EMPLOYE.MATRICULE, EMPLOYE.ENOM, EMPLOYE.FONCTION,   
          PROJET.NUMPROJ, PROJET.PNOM,
          DEPARTEMENT.NUMDEPT, DEPARTEMENT.DNOM, 
          TRAVAILLER.NBRE_H
   FROM EMPLOYE, TRAVAILLER, PROJET, DEPARTEMENT
   WHERE EMPLOYE.MATRICULE = TRAVAILLER.MATRICULE
   AND PROJET.NUMPROJ = TRAVAILLER.NUMPROJ
   AND EMPLOYE.NUMDEPT = DEPARTEMENT.NUMDEPT;


CREATE OR REPLACE TRIGGER travail_emp_insert
INSTEAD OF INSERT ON travail_emp

DECLARE
   duplicate_info EXCEPTION;
   PRAGMA EXCEPTION_INIT(duplicate_info, -00001);
   
BEGIN
   INSERT INTO EMPLOYE (MATRICULE, ENOM, FONCTION, NUMDEPT)
   VALUES (
           :NEW.MATRICULE,
           :NEW.ENOM,
           :NEW.FONCTION,
           :NEW.NUMDEPT 
          );

   INSERT INTO DEPARTEMENT(NUMDEPT, DNOM)
   VALUES (
           :NEW.NUMDEPT,
           :NEW.DNOM 
          );
   
   INSERT INTO PROJET(NUMPROJ, PNOM)
   VALUES (
           :NEW.NUMPROJ,
           :NEW.PNOM 
          );

   INSERT INTO TRAVAILLER 
   VALUES (
           :NEW.MATRICULE,
           :NEW.NUMPROJ,
           :NEW.NBRE_H
          );
 
   EXCEPTION
     WHEN duplicate_info THEN
       RAISE_APPLICATION_ERROR(
         num=> -20107,
         msg=> 'Duplicate info');
   
END travail_emp_insert;
/
