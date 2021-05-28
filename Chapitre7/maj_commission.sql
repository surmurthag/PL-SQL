-- maj_commission.sql
CREATE OR REPLACE PROCEDURE maj_commission 
IS

   	CURSOR cur_emp IS
       SELECT MATRICULE, SUM(NBRE_H)
       FROM TRAVAILLER
       GROUP BY MATRICULE
       HAVING SUM(NBRE_H)>400; 
     
BEGIN

   FOR c IN cur_emp LOOP
      UPDATE EMPLOYE
      SET COMMISSION = COMMISSION * 1.1
      WHERE MATRICULE = c.MATRICULE;   
   END LOOP;

END maj_commission;
/
