-- test_package5.sql
BEGIN
 
   surcharge_package.var := 20;

END;
/

SELECT surcharge_package.get_var 
FROM DUAL;

SELECT surcharge_package.p (11) 
FROM DUAL;
