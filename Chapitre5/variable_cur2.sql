-- variable_cur2.sql
SET SERVEROUTPUT ON

DECLARE
-- type fort
   TYPE type_cur_emp IS 
             REF CURSOR 
             RETURN EMPLOYE%ROWTYPE;
-- variable de type curseur
   cur_emp type_cur_emp;
   v_enr_emp cur_emp%ROWTYPE;

BEGIN

-- ouverture du curseur
   OPEN cur_emp FOR
                   SELECT * 
                   FROM EMPLOYE 
                   WHERE NUMDEPT IN
                               ( SELECT NUMDEPT
                               FROM DEPARTEMENT
                               WHERE DNOM='FINANCE' );
   DBMS_OUTPUT.PUT_LINE(' Les employ�s travaillent dans le d�partement finance sont : '); 
   LOOP
      FETCH cur_emp INTO v_enr_emp;
   EXIT when cur_emp%NOTFOUND;
      DBMS_OUTPUT.PUT_LINE('-- '|| v_enr_emp.enom);
   END LOOP;
   CLOSE cur_emp;
  
   OPEN cur_emp FOR
                   SELECT * 
                   FROM EMPLOYE 
                   WHERE NUMDEPT IN
                             (SELECT NUMDEPT
                               FROM DEPARTEMENT
                               WHERE DNOM='TECHNIQUE' );
   DBMS_OUTPUT.PUT_LINE(' Les employ�s travaillent dans le d�partement technique sont : '); 
   LOOP
      FETCH cur_emp INTO v_enr_emp;
   EXIT when cur_emp%NOTFOUND;
      DBMS_OUTPUT.PUT_LINE('-- '|| v_enr_emp.enom);
   END LOOP;
   CLOSE cur_emp;

END;
/
