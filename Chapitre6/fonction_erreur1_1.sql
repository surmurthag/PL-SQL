-- fonction_erreur1.sql
SET SERVEROUTPUT ON
DECLARE
   TYPE tableau_type IS VARRAY(21) OF NUMBER;
   erreur_Oracle tableau_type  := tableau_type 
   (-6530, -6592, - 6531, -6511, -0001, -1001,-1722, -1017, 
    -1403, -1012, -6501, -6504, -0625, -6500, -6533, -06532, 
    -01410, -00051, -01422, -06502, -01476); 

BEGIN
 
   DBMS_OUTPUT.PUT_LINE 
   ('Les erreurs prédéfines d''Oracle sont');
   FOR i in erreur_Oracle.FIRST.. erreur_Oracle.LAST loop
     DBMS_OUTPUT.PUT_LINE   
    ('-- ' ||TO_CHAR(SQLERRM(erreur_Oracle(i))));
   end loop;

END;
/
