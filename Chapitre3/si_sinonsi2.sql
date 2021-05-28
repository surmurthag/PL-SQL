-- si_sinonsi2.sql
SET SERVEROUTPUT ON

DECLARE 
   x INTEGER :=67;
   grade CHAR(1);

BEGIN

   IF (x < 50) THEN
      grade := 'F';
   ELSIF (x < 60) THEN
	  grade := 'D';
   ELSIF (x < 70) THEN
      grade := 'C';
   ELSIF (x < 80) THEN
	  grade := 'B';
   ELSE  
      grade := 'A';
   END IF;

   DBMS_OUTPUT.PUT_LINE('Le grade est : ' ||grade);

END;
/
