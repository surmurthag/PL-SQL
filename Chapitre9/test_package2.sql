-- test_package2.sql 
BEGIN

   UPDATE EMPLOYE 
   SET SALAIRE = SALAIRE * 1.2
   WHERE MATRICULE = 7000;

EXCEPTION
WHEN execptions_emp_package.employe_existe THEN
   DBMS_OUTPUT.PUT_LINE 
  ('execptions_emp_package.employe_existe');
WHEN execptions_emp_package.employe_non_existe THEN
   DBMS_OUTPUT.PUT_LINE 
 ('execptions_emp_package.employe_non_existe');
WHEN execptions_emp_package.violation_controle THEN
   DBMS_OUTPUT.PUT_LINE 
 ('execptions_emp_package.violation_controle');

END;
/
