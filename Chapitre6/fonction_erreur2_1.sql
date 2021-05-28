-- fonction_erreur2.sql
DECLARE
   nom EMPLOYE.ENOM%type;

BEGIN

   SELECT ENOM 
   INTO nom FROM EMPLOYE 
   WHERE MATRICULE = &mat;
   DBMS_OUTPUT.PUT_LINE('L''employ� est  : '||nom);
EXCEPTION
WHEN NO_DATA_FOUND THEN
   DBMS_OUTPUT.PUT_LINE('L''employ� n''existe pas');
   DBMS_OUTPUT.PUT_LINE('Le code erreur  : '||SQLCODE); 
   DBMS_OUTPUT.PUT_LINE
   ('Le libell� de l''erreur : '||SQLERRM);

END;   
/
