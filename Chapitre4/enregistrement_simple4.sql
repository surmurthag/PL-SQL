-- enregistrement_simple4
DECLARE
-- d�claration d'un type enregistrement identite 
  TYPE identite IS RECORD 
          (  
           nom_id VARCHAR2(25),
           prenom_id VARCHAR2(25)
          );
-- d�claration d'un type enregistrement imbriqu� 
-- bas� sur l'enregistrement identite
   TYPE contact IS RECORD 
         (
          nom identite, -- enregistrement imbriqu�
          telephone CHAR(13)
         );
  
 personne contact;

BEGIN

   NULL;

END;
/
