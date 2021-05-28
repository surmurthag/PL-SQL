-- affichage.sql
-- activation du paquetage sous SQL*PLUS 
SET SERVEROUTPUT ON

DECLARE 
   nom VARCHAR2(25) := 'THOMAS'; 
   fonct VARCHAR2(25) :='PRESIDENT'; 
   sal NUMBER := 5000; 

BEGIN 
   
   DBMS_OUTPUT.ENABLE; -- Activation du paquetage sous PL/SQL      
   DBMS_OUTPUT.PUT_LINE('Votre nom est        '|| nom||',');    
   DBMS_OUTPUT.PUT_LINE('votre fonction est   '|| fonct||',');    
   DBMS_OUTPUT.PUT_LINE('et votre salaire est '|| sal||'.');  

END;
/   
