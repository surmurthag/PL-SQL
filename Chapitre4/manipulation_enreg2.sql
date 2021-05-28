-- manipulation_enreg2.sql
SET SERVEROUTPUT ON

DECLARE
-- déclaration d'un type enregistrement type_temps
   TYPE type_temps IS RECORD
         (
           datec DATE,
           jourc VARCHAR2(12),
           heurec VARCHAR2(8) := '00:00:00'
         );

-- déclaration de deux variables temps1 et temps2
-- de type type_temps
   temps1 type_temps;
   temps2 type_temps;

BEGIN
   temps1.datec := '30/05/16';
   temps1.jourc := 'Lundi';
   temps1.heurec := '20:00:00';
-- affectation entre deux enregistrements
   temps2 :=temps1; 

-- affichage
   DBMS_OUTPUT.PUT_LINE('Date :  '||temps2.datec);
   DBMS_OUTPUT.PUT_LINE('Jour :  '||temps2.jourc);
   DBMS_OUTPUT.PUT_LINE('Heure : '||temps2.heurec);

END;
/
