-- curseur_explicite6.sql
SET SERVEROUTPUT ON

DECLARE 
-- d�claration du curseur
	CURSOR emp_curseur IS SELECT ENOM, SALAIRE 
			        FROM EMPLOYE 
			        WHERE FONCTION = 'MANAGER';
-- d�claration d'une variable enregistrement
	rec1 emp_curseur%ROWTYPE;

BEGIN

-- chargement du curseur 
   OPEN emp_curseur; 
   LOOP 
-- acc�s aux �l�ments du curseur
	   FETCH emp_curseur INTO rec1; 
   EXIT WHEN emp_curseur%NOTFOUND;
	   DBMS_OUTPUT.PUT_LINE
      ( rec1.enom||' a le salaire '|| rec1.salaire);
   END LOOP;
   CLOSE emp_curseur;

END;
/
