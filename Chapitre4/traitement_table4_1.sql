-- traitement_table4.sql
SET SERVEROUTPUT ON 

DECLARE
-- d�claration d'une table index�e par VARCHAR2 :
   TYPE type_pays IS TABLE OF VARCHAR2(25);
   pays TYPE_pays;

BEGIN

-- remplissage de la table par trois valeurs
   pays := type_pays('France','Bresil','Canada');
   
-- augmentation de taille de la table avec initialisation 
   pays.EXTEND(2,3); 

-- affichage du contenu de la table
   FOR i IN pays.FIRST..pays.LAST LOOP
      DBMS_OUTPUT.PUT_LINE('pays
      (' || LTRIM(TO_CHAR(i)) ||') = ' || pays(i));
   END LOOP; 

-- suppression des �l�ments
   pays.DELETE(4,5);
   DBMS_OUTPUT.PUT_LINE
   ('Suppression des �l�ments d''indice 4 et 5');

-- affichage du nombre d'�l�ments de la table 
   DBMS_OUTPUT.PUT_LINE('pays.COUNT = ' || pays.COUNT);

-- r�affectation des �l�ments
   DBMS_OUTPUT.PUT_LINE
   ('R�affectation des �l�ments d''indice 4 et 5');
   pays(4) := 'Angola';
   pays(5) := 'Belgique';

-- affichage du nombre d'�l�ments de la table 
   DBMS_OUTPUT.PUT_LINE('pays.COUNT = ' || pays.COUNT);  	

-- affichage du contenu de la table
   FOR i IN pays.FIRST..pays.LAST LOOP
      IF pays.EXISTS(i) THEN
         DBMS_OUTPUT.PUT_LINE('pays
         (' || LTRIM(TO_CHAR(i)) || ') = ' || pays(i));
     ELSE
        DBMS_OUTPUT.PUT_LINE('pays
        (' || LTRIM(TO_CHAR(i)) || ') inexistant '); 
     END IF;
   END LOOP;    

END;    
 /
