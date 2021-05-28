-- boucle_etiquette.sql
SET SERVEROUTPUT ON 

DECLARE 
    i INTEGER := 0; 
    j INTEGER := 0;

BEGIN 

   <<Boucle_externe>> 
   LOOP 
      i := i + 1; 
      j := 0; 
      <<Boucle_intenre>> 
      LOOP 
        j := j + 1; 
      EXIT Boucle_intenre WHEN j > 9; 
   EXIT Boucle_externe WHEN i > 2; 
      DBMS_OUTPUT.PUT_LINE(i || ' X ' ||j || ' = ' || i*j ); 
      END LOOP Boucle_intenre; 

   END LOOP Boucle_externe; 

END;
/
