-- fonction2.sql
SET SERVEROUTPUT ON

DECLARE
   mat1 EMPLOYE.MATRICULE%TYPE := 7800;
   tot NUMBER;

BEGIN
   tot := total_heures(mat1);
   DBMS_OUTPUT.PUT_LINE
   ('L''employé de matricule ' || mat1 || ' a travaillé ' || tot ||' heures');

END;
/
