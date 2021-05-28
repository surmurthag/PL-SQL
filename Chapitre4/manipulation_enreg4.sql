-- manipulation_enreg4.sql
SET SERVEROUTPUT ON

DECLARE
-- d�claration
   vprojet PROJET%ROWTYPE;
   nombre INTEGER;
   ville PROJET.EMPLACEMENT%TYPE;
BEGIN
   SELECT COUNT(*) 
   INTO nombre 
   FROM PROJET;
   DBMS_OUTPUT.PUT_LINE('Nombre de projets avant l''insertion '|| nombre);
   vprojet.NUMPROJ := 60;
   vprojet.PNOM :='Maintenance ROUTIETE';
   vprojet.EMPLACEMENT := 'PARIS';

-- insertion dans la table SQL PROJET
   INSERT INTO PROJET 
   VALUES vprojet;
   DBMS_OUTPUT.PUT_LINE('Insertion de projet num�ro '|| vprojet.NUMPROJ);
   SELECT EMPLACEMENT 
   INTO ville 
   FROM PROJET WHERE NUMPROJ = vprojet.NUMPROJ;
   DBMS_OUTPUT.PUT_LINE('l''emplacement est '|| ville);
   SELECT COUNT(*) 
   INTO nombre 
   FROM PROJET;
   DBMS_OUTPUT.PUT_LINE('Nombre de projets apr�s l''insertion '|| nombre);
   vprojet.EMPLACEMENT := 'BORDEAUX';

-- modification d'une ligne de la table SQL PROJET
   UPDATE PROJET
   SET ROW=vprojet
   WHERE NUMPROJ=vprojet. NUMPROJ;
   SELECT EMPLACEMENT 
   INTO ville 
   FROM PROJET 
   WHERE NUMPROJ = vprojet.NUMPROJ;
   DBMS_OUTPUT.PUT_LINE('Apr�s modification l''emplacement est '|| ville);

   ROLLBACK;

END;
/
