-- traitement_table3.sql
SET SERVEROUTPUT ON 

DECLARE
-- déclaration d'une table indexée par VARCHAR2 :
   TYPE population IS TABLE OF NUMBER 
   INDEX BY VARCHAR2(64); 
   pays_population1 population;
   pays_population2 population; 
   i VARCHAR2(64); 

BEGIN

-- remplissage de la table
   pays_population1('Chine')  := 1374900000;
   pays_population1('France') := 66627000;
   pays_population1('Taïwan') := 23449287;

-- affectation 
   pays_population2 :=   pays_population1;

 -- changement une valeur  de la table
   pays_population2('France') := 66627602;

-- affichage d'un élément de la table
   i := 'France';
   DBMS_Output.PUT_LINE('Population de ' || i ||' est ' ||   
   pays_population2(i));

END;
/
