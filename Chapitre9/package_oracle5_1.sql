-- package_oracle5.sql
SET SERVEROUTPUT ON

DECLARE
   source NCLOB;
   destination NCLOB;
   
BEGIN

   -- initialisation objet lob 
   SELECT PNOM
   INTO source
   FROM PROJET
   WHERE NUMPROJ =30;
   DBMS_OUTPUT.PUT_LINE(source);
   
   -- initialisation objet lob 
   SELECT EMPLACEMENT
   INTO destination
   FROM PROJET
   WHERE NUMPROJ =30;
   DBMS_OUTPUT.PUT_LINE(DESTINATION);

-- ajout objet lob 
   DBMS_LOB.APPEND(source, destination);
   DBMS_OUTPUT.PUT_LINE(source);
   
-- extraction objet lob 
   DBMS_OUTPUT.PUT_LINE(SUBSTR(source, 1, DBMS_LOB.GETLENGTH(source)));
   DBMS_OUTPUT.PUT_LINE(SUBSTR(source, 1, 12));
EXCEPTION
WHEN OTHERS THEN
   DBMS_OUTPUT.PUT_LINE('OOPS!');
   DBMS_OUTPUT.PUT_LINE(SQLERRM);

END;
/
