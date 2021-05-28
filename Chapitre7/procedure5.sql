-- procedure5.sql
SET SERVEROUTPUT ON

DECLARE
   SUBTYPE message IS VARCHAR2(5) NOT NULL;
   mes  message := 'ABCDE';
 
   PROCEDURE proc(par message) IS
   BEGIN
     DBMS_OUTPUT.PUT_LINE(par);
   END;
 
BEGIN

-- le paramètre effectif n’hérite pas la taille du sous-type
   proc('ABCDEFG');  

-- le paramètre effectif hérite la contrainte NOT NULL
   proc(NULL);   

END;
/
