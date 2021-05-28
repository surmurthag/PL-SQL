-- factoriel.sql
CREATE OR REPLACE FUNCTION factoriel(n POSITIVE)
RETURN POSITIVE
IS

BEGIN

   IF n = 1 THEN -- condition d’arrêt 
      RETURN n;
   ELSE
      RETURN n * factoriel(n-1); -- appel recursif
   END IF;

END;
/
