-- erreur_pragma.sql
DECLARE
   le_dept EMPLOYE.NUMDEPT%TYPE  := '&sle_dept';
   erreur_reste_emp EXCEPTION;
-- association du nom d'exception à un nom d'erreur
   PRAGMA EXCEPTION_INIT(erreur_reste_emp, -2292);

BEGIN

   DBMS_OUTPUT.PUT_LINE 
   ('Suppression du département : ' || le_dept);

   DELETE FROM DEPARTEMENT
   WHERE NUMDEPT = le_dept ;

EXCEPTION
WHEN erreur_reste_emp THEN
   DBMS_OUTPUT.PUT_LINE 
   ('Veuillez supprimer les employés avant');

END;
/
