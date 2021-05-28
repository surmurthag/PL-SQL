-- constantes_package_sp.sql
CREATE OR REPLACE PACKAGE constantes_package IS

   date_init	 DATE        := SYSDATE;
   salaire_min	 NUMBER(8,3) := 750;
   salaire_max	 NUMBER(8,3) := 9900;
   commission_min	 NUMBER(8,3) := 0;
   commission_max	 NUMBER(8,3) := 4500;
   nombre_heure	 NUMBER(5)   := 0;
	

END constantes_package;
/  
