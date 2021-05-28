-- commission_package_bd.sql
CREATE OR REPLACE PACKAGE BODY commission_package IS

   FUNCTION validation_commission (v_comm IN NUMBER) RETURN 
   BOOLEAN
   IS 
      max_comm NUMBER;
   BEGIN
      
      SELECT MAX(commission)
      INTO max_comm
      FROM EMPLOYE;
      IF (v_comm > max_comm) THEN 
         RETURN (FALSE);
      ELSE
         RETURN (TRUE);
      END IF;
   
   END validation_commission;

   PROCEDURE reset_commission (v_comm IN NUMBER)
   IS
      valide BOOLEAN;
   BEGIN
   
      valide := validation_commission (v_comm);
      IF valide THEN
         g_comm := v_comm;
      ELSE
         RAISE_APPLICATION_ERROR(-20210,'commssion invalide …!');
      END IF;

   END reset_commission;

   FUNCTION moyenne_commission  RETURN NUMBER
   IS 
      moy_comm NUMBER;
   BEGIN
      SELECT AVG(commission)
      INTO moy_comm
      FROM EMPLOYE;
     
      RETURN (moy_comm);
      
   END moyenne_commission;

END commission_package;
/  
