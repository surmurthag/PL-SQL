-- propagation8.sql
-- bloc extérieur
DECLARE
   erreur_salaire   EXCEPTION;
   sal NUMBER  := 20000;
   salaire_max NUMBER  := 10000;
   salaire_min NUMBER  := 800;

   faux_salaire  NUMBER;

BEGIN
   DBMS_OUTPUT.PUT_LINE 
   ('Insertion d''un nouvel employé');
   DBMS_OUTPUT.PUT_LINE 
   ('-------------------------------');

   INSERT INTO EMPLOYE VALUES
   (7990, 'Emma', 'Secrétaire', to_date('26-05-2015','dd-mm- 
    yyyy'), 750, null, 20);
    sal := 750;
-- bloc intérieur
   BEGIN
   
      IF sal > salaire_max OR sal < salaire_min  THEN
         RAISE erreur_salaire;   -- raise exception
      END IF;
   EXCEPTION
   WHEN erreur_salaire THEN  
      faux_salaire  := sal;
      DBMS_OUTPUT.PUT_LINE
      ('Salaire ' || faux_salaire ||' est hors intervalle');
      DBMS_OUTPUT.PUT_LINE 
      (' =====> Salaire minimal est ' || salaire_min);
      DBMS_OUTPUT.PUT_LINE 
      (' =====> Salaire maximal est ' || salaire_max);
      RAISE;  -- reraising une exception

   END;

EXCEPTION
WHEN erreur_salaire THEN    
   ROLLBACK;
   DBMS_OUTPUT.PUT_LINE 
   ('==> ...Insertion annulée...<==');

END;
/
