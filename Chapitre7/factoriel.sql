-- factoriel.sql
CREATE OR REPLACE FUNCTION factoriel(n POSITIVE)
RETURN POSITIVE
IS

BEGIN

   IF n = 1 THEN -- condition d�arr�t 
      RETURN n;
   ELSE
      RETURN n * factoriel(n-1); -- appel recursif
   END IF;

END;
/
