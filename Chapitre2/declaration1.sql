-- declaration1.sql
DECLARE 
   sexe CHAR(1); 
   /* d�claration d�une variable pour stocker le sexe d'une   
      personne (M ou F) */ 
   
   i BINARY_INTEGER:= 0;
   /* d�claration d�un compteur initialis� � 0 */
   
   date_commande DATE:= SYSDATE;
   /* d�claration d�une variable pour stocker la date de cr�ation   
      d�une commande. La variable est initialis�e � la date du    
      jour.*/
   
   message VARCHAR2(30):='Bonjour';
   /* d�claration d�une variable pour stocker un message, qui   
      est initialis�e � �Bonjour� */
   
   note FLOAT := 10.5; 
   /* d�claration d�une variable pour stocker la note, qui  est   
      initialis�e � 10,5 */

BEGIN

   NULL; 

END;
/
