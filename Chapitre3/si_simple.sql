-- si_simple.sql
SET SERVEROUTPUT ON

DECLARE
-- déclaration des variables
   message VARCHAR2(30) :='bonjour les amis';
   note FLOAT := 10.5;

BEGIN

-- instructions conditionnelles simples
   IF message IS NOT NULL   THEN
      DBMS_OUTPUT.PUT_LINE('message non nul' );
   END IF;	

   IF LENGTH(message) > 0   THEN
      DBMS_OUTPUT.PUT_LINE('message non vide ');
   END IF;

   IF message LIKE '%ami%' AND LENGTH(message) > 0   THEN
      DBMS_OUTPUT.PUT_LINE
      ('message non vide, contenant le mot ami');
   END IF;

   IF note between 10 AND 12   THEN
      DBMS_OUTPUT.PUT_LINE('la note entre 10 et 12' );
   END IF;

END;
/
