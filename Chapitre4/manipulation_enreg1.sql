-- manipulation_enrg1.sql
SET SERVEROUTPUT ON

DECLARE
-- déclaration d'un type enregistrement type_temps
   TYPE type_temps IS RECORD
         (
           datec DATE,
           jourc VARCHAR2(12),
           heurec VARCHAR2(8) := '00:00:00'
          );
-- déclaration d’une variable temps de type type_temps
   temps type_temps;

BEGIN
-- affectation par SETECT  INTO 
   SELECT sysdate
   INTO temps.datec
   FROM dual;

-- affectation par :=
   temps.jourc := TO_CHAR(temps.datec, 'DAY');
   temps.heurec := TO_CHAR(temps.datec,
  'HH24:MI:SS');

-- affichage
   DBMS_OUTPUT.PUT_LINE('Date :  '||temps.datec);
   DBMS_OUTPUT.PUT_LINE('Jour :  '||temps.jourc);
   DBMS_OUTPUT.PUT_LINE('Heure : '||temps.heurec);

END;
/
