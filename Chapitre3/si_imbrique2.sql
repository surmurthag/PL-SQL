-- si_imbrique2.sql
SET SERVEROUTPUT ON

DECLARE
-- déclaration des variables 
   x INTEGER :=67;
   grade CHAR(1);

BEGIN
-- détermination du grade
   IF (x < 50) THEN
      grade := 'F';
   ELSE 
      IF (x < 60) THEN
         grade := 'D';
      ELSE 
	     IF (x < 70) THEN
            grade := 'C';
	     ELSE 
	        IF (x < 80) THEN
	           grade := 'B';
	        ELSE  
	           grade := 'A';
	        END IF;
	     END IF;
      END IF;
   END IF;
   DBMS_OUTPUT.PUT_LINE('Le grade est : ' ||grade);

END;
/
