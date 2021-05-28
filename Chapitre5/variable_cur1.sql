-- variable_cur1.sql
DECLARE
-- type fort
   TYPE type_cur_emp IS REF CURSOR RETURN EMPLOYE%ROWTYPE;
-- type faible
   TYPE type_cur IS REF CURSOR; 

-- variable curseur fort
   ce1 type_cur_emp; 
-- variable curseur faible
   ce2 type_cur; 
-- type fort
   TYPE type_cur_dept IS REF CURSOR RETURN DEPARTEMENT%ROWTYPE;
-- variable curseur fort
   cd1 type_cur_dept; 
-- déclaration d'un type enregistrement
   TYPE enrg_employe IS RECORD(
                                numero NUMBER,
                                nom VARCHAR2(25),
                                salaire NUMBER(8,2),
                                service VARCHAR2(25)
                                );
-- type fort
   TYPE type_cur_enreg_emp IS REF CURSOR RETURN enrg_employe;
   emp type_cur_enreg_emp;

BEGIN
   
   NULL;

END;
/
