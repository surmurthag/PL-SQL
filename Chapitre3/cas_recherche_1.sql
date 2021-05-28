-- cas_recherche.sql
SET SERVEROUTPUT ON

DECLARE
   moyenne NUMBER(4,2) :=13.50;

BEGIN
 
  CASE 
  WHEN moyenne between 18 and 20  THEN    
      DBMS_OUTPUT.PUT_LINE('Excellent');
  WHEN moyenne between 16 and 17.99 THEN   
      DBMS_OUTPUT.PUT_LINE('Très Bien');
   WHEN moyenne between 14 and 15.99 THEN  
       DBMS_OUTPUT.PUT_LINE('Bien');
   WHEN moyenne between 12 and 13.99 THEN  
       DBMS_OUTPUT.PUT_LINE('Assez bien');
   WHEN moyenne between 10 and 11.99 THEN 
       DBMS_OUTPUT.PUT_LINE('Passable');
   WHEN moyenne between 0 and 9.99 THEN 
       DBMS_OUTPUT.PUT_LINE('Redouble');
   ELSE 
	   DBMS_OUTPUT.PUT_LINE('Moyenne inconnue !!!');
   END CASE;

END;
/
