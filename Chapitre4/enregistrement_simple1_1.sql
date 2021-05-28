-- enregistrement_simple1.sql
DECLARE
-- déclaration d’un enregistrement type_employe 
  TYPE type_employe IS RECORD
          (
           mat number(5),
           prenom VARCHAR2(25),     
           nom employe.enom%TYPE,
           exe char(1)
          ); 
-- déclaration d’une variable employe_rec de type type_employe
  emp_rec type_employe;

BEGIN

   NULL;
	 
END;
/
