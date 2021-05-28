-- curseur_explicite5.sql
SET SERVEROUTPUT ON

DECLARE
-- déclaration du curseur
   CURSOR c IS SELECT ENOM 
               FROM EMPLOYE
               WHERE ROWNUM < 7
               ORDER BY ENOM;
   vnom EMPLOYE.ENOM%TYPE;

BEGIN

   OPEN c;
   LOOP
      FETCH c INTO vnom;
   EXIT WHEN c%NOTFOUND OR c%NOTFOUND IS NULL;
      DBMS_OUTPUT.PUT_LINE(c%ROWCOUNT || '. ' || vnom);
      IF c%ROWCOUNT = 3 THEN
         DBMS_OUTPUT.PUT_LINE('--- Fetch 3 lignes ---');
      END IF;
   END LOOP;
   CLOSE c;

END;
/
