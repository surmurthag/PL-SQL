-- recursivite2.sql
SET SERVEROUTPUT ON

BEGIN

   DBMS_OUTPUT.PUT('Fibonacci = {');
   FOR i IN 1..20 LOOP
      DBMS_OUTPUT.PUT(fibonacci(i));
      DBMS_OUTPUT.PUT(', ');
   END LOOP;
   DBMS_OUTPUT.PUT_LINE('...}');

END;
/
