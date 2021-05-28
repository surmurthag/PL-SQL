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

-- le param�tre effectif n�h�rite pas la taille du sous-type
   proc('ABCDEFG');  

-- le param�tre effectif h�rite la contrainte NOT NULL
   proc(NULL);   

END;
/
