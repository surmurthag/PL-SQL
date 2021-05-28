-- package_oracle3.sql
DECLARE
   Lignes DBMSOUTPUT_LINESARRAY;
   nombre NUMBER := 5;

BEGIN

-- extraction des lignes � partie du tampon interne
   DBMS_OUTPUT.GET_LINES (lignes, nombre);
-- purge du tampon et d�sactivation du mode trace
   DBMS_OUTPUT.DISABLE;
-- fixation de la taille du tampon
   DBMS_OUTPUT.ENABLE;
   FOR i IN 1..nombre LOOP
-- ligne avec caract�re fin de ligne 
      DBMS_OUTPUT.PUT_LINE('Ligne  ' || i || ' : ' ||lignes (i));
   END LOOP;
 
END;
 /
 
