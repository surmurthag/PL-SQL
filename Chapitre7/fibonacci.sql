-- fibonacci.sql
CREATE OR REPLACE FUNCTION fibonacci( n INTEGER) 
RETURN INTEGER

IS
  fib_0 INTEGER := 0;
  fib_1 INTEGER := 1;

BEGIN

-- condition d’arrêt
   IF n = 0 THEN 
      RETURN fib_0;
   ELSIF n = 1 THEN
      RETURN fib_1;                       
   ELSE
-- appel récursif
      RETURN fibonacci(n-2) + fibonacci(n-1);
   END IF;

END;
/
