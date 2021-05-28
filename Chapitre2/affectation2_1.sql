-- affectation2.sql
SET SERVEROUTPUT ON

DECLARE 
   /* on peut faire l'affectation dans la partie déclarative : 
      initialisation */ 

   salaire NUMBER;
   heure_travail NUMBER := 40;
   salaire_horaire NUMBER := 22.50;
   bonus NUMBER := 100;
   pays VARCHAR2(50);
   nom VARCHAR2(50) := 'thomas';
   max_sal NUMBER := 700;
   valide BOOLEAN;

BEGIN -- on peut faire l'affectation dans le corps du bloc

   salaire := (salaire_horaire * heure_travail) + bonus;
   nom := UPPER(nom);
   pays := 'France';
   valide := (salaire > max_sal);
   DBMS_OUTPUT.PUT_LINE(nom || ' habite en '|| pays);
   DBMS_OUTPUT.PUT_LINE(' Il gagne '|| salaire);
 
END;
/
