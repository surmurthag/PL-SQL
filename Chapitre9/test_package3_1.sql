-- test_package3.sql
SET SERVEROUTPUT ON

DECLARE

   somme_salaire EMPLOYE.SALAIRE%TYPE; 
BEGIN

   SELECT SUM(SALAIRE)
   INTO somme_salaire
   FROM EMPLOYE
   WHERE SALAIRE <= constantes_package.commission_max;
   DBMS_OUTPUT.PUT_LINE 
   ('Somme des salaires = ' || somme_salaire);

END;
/
