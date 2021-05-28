-- erreur_pragma.sql
DECLARE
   le_dept EMPLOYE.NUMDEPT%TYPE  := '&sle_dept';
   erreur_reste_emp EXCEPTION;
-- association du nom d'exception � un nom d'erreur
   PRAGMA EXCEPTION_INIT(erreur_reste_emp, -2292);

BEGIN

   DBMS_OUTPUT.PUT_LINE 
   ('Suppression du d�partement : ' || le_dept);

   DELETE FROM DEPARTEMENT
   WHERE NUMDEPT = le_dept ;

EXCEPTION
WHEN erreur_reste_emp THEN
   DBMS_OUTPUT.PUT_LINE 
   ('Veuillez supprimer les employ�s avant');

END;
/
