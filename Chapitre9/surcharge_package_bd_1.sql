-- surcharge_package_bd.sql

CREATE OR REPLACE PACKAGE BODY surcharge_package 
-- corps
AS
   PROCEDURE p IS
   
  BEGIN
  
     DBMS_OUTPUT.PUT_LINE('toto');
  
  END;
  
  PROCEDURE p (i NUMBER) IS
  
  BEGIN
  
       DBMS_OUTPUT.PUT_LINE(i);
 
  END;
  
  FUNCTION p (i NUMBER) RETURN NUMBER IS
  
  BEGIN

     IF (i > 10) THEN 
        RAISE mon_exception; 
     END IF;
     RETURN i;
  
  END;
  
  FUNCTION get_var RETURN NUMBER IS 
  BEGIN 
  
    RETURN var; 
 
  END;
END surcharge_package;
/
