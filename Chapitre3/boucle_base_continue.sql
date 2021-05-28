-- boucle_base_continue.sql
SET SERVEROUTPUT ON

DECLARE
   i PLS_INTEGER := -1;
   j PLS_INTEGER;
   m PLS_INTEGER;

BEGIN

    DBMS_OUTPUT.PUT_LINE
   ('Table de Multiplication des nombres pairs');
    DBMS_OUTPUT.PUT_LINE 
   ('=========================================');
   LOOP
      i := i + 1;
   CONTINUE WHEN MOD(i,2)=0;
      DBMS_OUTPUT.PUT_LINE('Multiple de ' || i);
      j := -1;
      LOOP
         j := j + 1;
         m := i * j;
         DBMS_OUTPUT.PUT_LINE(i || ' * ' || j || ' = ' || m);
      EXIT WHEN (j = 9);
      END LOOP;
   EXIT WHEN (i = 9);
   END LOOP;
 
END;
/
