-- comparaison_table1.sql
SET SERVEROUTPUT ON

DECLARE
-- déclaration des tables
   TYPE jour_type IS VARRAY(4) OF VARCHAR2(25);
   TYPE jour_semaine_type IS VARRAY(7) OF jour_type;

   jour jour_type;
   jour_ferie jour_type := jour_type('Samedi', 'Dimanche');
   jour_semaine jour_semaine_type;
  

BEGIN

-- comparaison des tables à la valeur NULL
   IF jour IS NULL THEN
     DBMS_OUTPUT.PUT_LINE('jour IS NULL');
   ELSE
     DBMS_OUTPUT.PUT_LINE('jour IS NOT NULL');
   END IF;
   IF jour_ferie IS NOT NULL THEN
     DBMS_OUTPUT.PUT_LINE(' jour_ferie IS NOT NULL');
   ELSE
     DBMS_OUTPUT.PUT_LINE(' jour_ferie IS NULL');
   END IF;
   IF jour_semaine IS NULL THEN
     DBMS_OUTPUT.PUT_LINE('jour_semaine IS NULL');
   ELSE
     DBMS_OUTPUT.PUT_LINE('jour_semaine IS NOT NULL');
   END IF;

END;
/
