-- curseur_implicite3.sql
SET SERVEROUTPUT ON 

BEGIN
-- Suppression des lignes de la table TRAVAILLER 
   DELETE FROM TRAVAILLER;
   
-- le nombre des lignes supprimées  
   DBMS_OUTPUT.PUT_LINE('Le nombre des lignes supprimées de la table TRAVAILLER est  '|| SQL%ROWCOUNT);

  ROLLBACK;
END;
/
