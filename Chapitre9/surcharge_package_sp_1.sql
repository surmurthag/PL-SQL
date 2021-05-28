-- surcharge_package_sp.sql
CREATE OR REPLACE PACKAGE surcharge_package 
-- spécification
AS
   var NUMBER;
   PROCEDURE p;
   PROCEDURE p (i NUMBER);
   FUNCTION p (i NUMBER) RETURN NUMBER;
   FUNCTION get_var RETURN NUMBER;
   mon_exception EXCEPTION;
   PRAGMA EXCEPTION_INIT(mon_exception, -20101);

END surcharge_package;
/
L
