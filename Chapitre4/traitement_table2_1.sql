-- traitement_table2.sql

SET SERVEROUTPUT ON

DECLARE
-- déclaration d'une table indexée par VARCHAR2 :
   TYPE population IS TABLE OF NUMBER 
   INDEX BY VARCHAR2(64); 
   pays_population population; 
   i VARCHAR2(64); 

BEGIN

-- remplissage de la table
   pays_population('Chine') := 1374900000;
   pays_population('France') := 66627000;
   pays_population('Taïwan') := 23449287;

 -- changer une valeur  de la table
   pays_population('France') := 66627602;

-- affichage d'un élément de la table
   i := 'France';
   DBMS_Output.PUT_LINE('Population de ' || i ||' est ' || pays_population(i));

END;
/
