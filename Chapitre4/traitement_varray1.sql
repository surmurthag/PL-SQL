-- traitement_varray1.sql
SET SERVEROUTPUT ON 

Declare
-- déclaration
   TYPE type_jour is VARRAY(7) of varchar2(20);
   jour TYPE_jour;

Begin

-- remplissage de la table
   jour := type_jour('Lundi','Mardi','Mercredi', 'Jeudi', 
                     'Vendredi','Samedi','Dimanche');

-- affichage de contenu de la table
   For i IN 1..7 Loop
      DBMS_OUTPUT.PUT_LINE
      ('jour(' || ltrim(to_char(i)) ||') = ' || jour(i));
   End loop; 
End;    
 /
