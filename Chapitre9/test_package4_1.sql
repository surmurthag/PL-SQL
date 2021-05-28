-- test_package4.sql
SET SERVEROUTPUT ON

DECLARE

   comm EMPLOYE.COMMISSION%TYPE :=100; 
BEGIN

   commission_package.reset_commission (comm);
   UPDATE EMPLOYE
   SET COMMISSION = commission_package.g_comm
   WHERE COMMISSION IS NULL;

   For c IN (SELECT ENOM, COMMISSION FROM EMPLOYE) LOOP
      DBMS_OUTPUT.PUT_LINE
      (c.enom || ' a la commission ' ||c.commission);
   END LOOP;


END;
/
