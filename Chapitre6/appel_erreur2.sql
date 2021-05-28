-- appel_erreur2.sql
SET SERVEROUTPUT ON

DECLARE 
	min_sal NUMBER := 1000;
	nov_sal NUMBER := 500;

BEGIN

   INSERT INTO EMPLOYE 
   VALUES(7900, 'BERNARD', 'MANAGER', to_date('25-12-2015','dd-
           mm-yyyy'), nov_sal, NULL, 20);
	IF nov_sal < min_sal THEN
       ROLLBACK;
/* utilisation de la procédure RAISE_APPLICATION_ERROR dans la  
   partie exécutable */    
       RAISE_APPLICATION_ERROR
       (-20102, 'Salaire est inferieur a '||min_sal);	
	END IF;
	COMMIT;

END;
/
