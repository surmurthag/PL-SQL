-- conversion.sql
SET SERVEROUTPUT ON 

DECLARE
   temps_d CHAR(5);
   temps_f CHAR(5);
   temps_e NUMBER(5);

BEGIN
   
   temps_d := TO_CHAR(SYS_EXTRACT_UTC(SYSTIMESTAMP),'SSSSS');
   temps_f := TO_CHAR(SYSDATE,'SSSSS');
   temps_e := temps_f- temps_d; -- conversion implicite
   DBMS_OUTPUT.PUT_LINE('Date debut = ' || temps_d);
   DBMS_OUTPUT.PUT_LINE('Date fin =   ' || temps_f);
   DBMS_OUTPUT.PUT_LINE('Temps ecoulé' || temps_e);

END;
/
