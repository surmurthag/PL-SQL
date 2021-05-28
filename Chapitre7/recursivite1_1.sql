-- recursivite1.sql
SET SERVEROUTPUT ON

BEGIN

   FOR i IN 1..5 LOOP
      DBMS_OUTPUT.PUT_LINE(i || '! = ' || factoriel(i));
  END LOOP;

END;
/
