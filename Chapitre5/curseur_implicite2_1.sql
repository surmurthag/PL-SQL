-- curseur_implicite2.sql
SET SERVEROUTPUT ON 

BEGIN
-- modification des projets dont l'emplacement est PARIS 
   UPDATE PROJET
   SET EMPLACEMENT='BORDEAUX'
   WHERE EMPLACEMENT='PARIS';

-- v�rification si des modifications sont effectu�es  
   IF SQL%NOTFOUND THEN
      DBMS_OUTPUT.PUT_LINE('Pas de modification');      
   ELSE
      DBMS_OUTPUT.PUT_LINE('Modification effectu�e');
   END IF;

  ROLLBACK;
END;
/
