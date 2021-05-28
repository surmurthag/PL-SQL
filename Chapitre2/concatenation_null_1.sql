-- concatenation_null.sql
SET SERVEROUTPUT ON 

DECLARE
   chaîne1 VARCHAR2(5) := 'infor';
   chaîne2 VARCHAR2(7) := 'matique';
   chaîne3 VARCHAR2(12);

BEGIN
   
-- concaténation
   chaîne3 := chaîne1 || NULL || chaîne2 || NULL; 
   DBMS_OUTPUT.PUT_LINE (chaîne3);

END;
/
