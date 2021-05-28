-- curseur_implicite1.sql
SET SERVEROUTPUT ON 

BEGIN
-- modification des projets dont l'emplacement est PARIS 
   UPDATE PROJET
   SET EMPLACEMENT='BORDEAUX'
   WHERE EMPLACEMENT='PARIS';

-- v�rification des modifications sont effectu�es  
   IF SQL%FOUND THEN
      DBMS_OUTPUT.PUT_LINE ('Modification effectu�e');
   ELSE
      DBMS_OUTPUT.PUT_LINE ('Pas de modification');
   END IF;

  ROLLBACK;
END;
/
