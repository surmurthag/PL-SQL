-- execptions_emp_package_sp.sql
CREATE OR REPLACE PACKAGE execptions_emp_package IS

   employe_existe EXCEPTION;
   PRAGMA EXCEPTION_INIT(employe_existe, -2291);  
   employe_non_existe EXCEPTION;
   PRAGMA EXCEPTION_INIT(employe_non_existe, -2292);
   violation_controle EXCEPTION;
   PRAGMA EXCEPTION_INIT(violation_controle, -2293);  

END execptions_emp_package;
/
