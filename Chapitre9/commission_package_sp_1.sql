-- commission_package_sp.sql
CREATE OR REPLACE PACKAGE commission_package IS

   g_comm NUMBER := 200; -- initialis� � 200
   
   FUNCTION moyenne_commission  RETURN NUMBER;   
   PROCEDURE reset_commission (v_comm IN NUMBER);

END commission_package;
/
