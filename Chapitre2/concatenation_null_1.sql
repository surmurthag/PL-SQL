-- concatenation_null.sql
SET SERVEROUTPUT ON 

DECLARE
   cha�ne1 VARCHAR2(5) := 'infor';
   cha�ne2 VARCHAR2(7) := 'matique';
   cha�ne3 VARCHAR2(12);

BEGIN
   
-- concat�nation
   cha�ne3 := cha�ne1 || NULL || cha�ne2 || NULL; 
   DBMS_OUTPUT.PUT_LINE (cha�ne3);

END;
/
