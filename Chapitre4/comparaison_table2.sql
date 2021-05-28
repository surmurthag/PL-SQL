-- comparaison_table2.sql
SET SERVEROUTPUT ON

DECLARE
-- déclaration des tables
   TYPE couleur_tab IS TABLE OF VARCHAR2(25); 
   ens_couleur1 couleur_tab :=   
   couleur_tab('Rouge','Jaune','Noir','Vert');
   ens_couleur2 couleur_tab :=
   couleur_tab('Jaune','Noir','Rouge','Vert');
   ens_couleur3 couleur_tab :=
   couleur_tab('Jaune','Noir','Vert');

BEGIN

-- comparaison 
  IF ens_couleur1 = ens_couleur2 THEN
      DBMS_OUTPUT.PUT_LINE('ens_couleur1 = ens_couleur2');
   END IF;
   IF ens_couleur2 != ens_couleur3 THEN
      DBMS_OUTPUT.PUT_LINE('ens_couleur2 != ens_couleur3');
   END IF;

END;
/
