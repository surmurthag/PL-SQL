-- enregistrement_simple4
DECLARE
-- déclaration d'un type enregistrement identite 
  TYPE identite IS RECORD 
          (  
           nom_id VARCHAR2(25),
           prenom_id VARCHAR2(25)
          );
-- déclaration d'un type enregistrement imbriqué 
-- basé sur l'enregistrement identite
   TYPE contact IS RECORD 
         (
          nom identite, -- enregistrement imbriqué
          telephone CHAR(13)
         );
  
 personne contact;

BEGIN

   NULL;

END;
/
