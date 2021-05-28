-- curseur_implicite2.sql
SET SERVEROUTPUT ON 

BEGIN
-- modification des projets dont l'emplacement est PARIS 
   UPDATE PROJET
   SET EMPLACEMENT='BORDEAUX'
   WHERE EMPLACEMENT='PARIS';

-- vérification si des modifications sont effectuées  
   IF SQL%NOTFOUND THEN
      DBMS_OUTPUT.PUT_LINE('Pas de modification');      
   ELSE
      DBMS_OUTPUT.PUT_LINE('Modification effectuée');
   END IF;

  ROLLBACK;
END;
/
