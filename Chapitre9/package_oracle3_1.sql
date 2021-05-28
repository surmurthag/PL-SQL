-- package_oracle3.sql
DECLARE
   Lignes DBMSOUTPUT_LINESARRAY;
   nombre NUMBER := 5;

BEGIN

-- extraction des lignes à partie du tampon interne
   DBMS_OUTPUT.GET_LINES (lignes, nombre);
-- purge du tampon et désactivation du mode trace
   DBMS_OUTPUT.DISABLE;
-- fixation de la taille du tampon
   DBMS_OUTPUT.ENABLE;
   FOR i IN 1..nombre LOOP
-- ligne avec caractère fin de ligne 
      DBMS_OUTPUT.PUT_LINE('Ligne  ' || i || ' : ' ||lignes (i));
   END LOOP;
 
END;
 /
 
