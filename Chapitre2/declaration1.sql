-- declaration1.sql
DECLARE 
   sexe CHAR(1); 
   /* déclaration d’une variable pour stocker le sexe d'une   
      personne (M ou F) */ 
   
   i BINARY_INTEGER:= 0;
   /* déclaration d’un compteur initialisé à 0 */
   
   date_commande DATE:= SYSDATE;
   /* déclaration d’une variable pour stocker la date de création   
      d’une commande. La variable est initialisée à la date du    
      jour.*/
   
   message VARCHAR2(30):='Bonjour';
   /* déclaration d’une variable pour stocker un message, qui   
      est initialisée à ‘Bonjour’ */
   
   note FLOAT := 10.5; 
   /* déclaration d’une variable pour stocker la note, qui  est   
      initialisée à 10,5 */

BEGIN

   NULL; 

END;
/
