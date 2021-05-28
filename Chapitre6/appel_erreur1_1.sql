-- appel_erreur1.sql
SET SERVEROUTPUT ON

DECLARE 
	err_sal EXCEPTION;
	min_sal NUMBER := 1000;
	nov_sal NUMBER := 500;

BEGIN

   INSERT INTO EMPLOYE 
   VALUES(7900, 'BERNARD', 'MANAGER', to_date('25-12-2015','dd-
           mm-yyyy'), nov_sal, NULL, 20);
	IF nov_sal < min_sal THEN
	   RAISE err_sal;
	END IF;
	COMMIT;

EXCEPTION
WHEN err_sal THEN
   ROLLBACK;
/* utilisation de la procédure RAISE_APPLICATION_ERROR dans la  
   partie exception */    
   RAISE_APPLICATION_ERROR
   (-20102, 'Salaire est inferieur à '||min_sal);	
WHEN OTHERS THEN
   DBMS_OUTPUT.PUT_LINE('Erreur...');

END;
/
