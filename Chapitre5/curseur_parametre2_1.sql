-- curseur_parametre2.sql
SET SERVEROUTPUT ON

DECLARE
   CURSOR c( max_sal NUMBER, date_rec DATE DEFAULT  
              TO_DATE('20-10-1990','dd-mm-yyyy')) IS
                          SELECT *
                          FROM EMPLOYE
                          WHERE SALAIRE > max_sal
                          AND DATEREC > date_rec
                          ORDER BY SALAIRE;
   enr c%ROWTYPE;

BEGIN

   OPEN c(2000);
   LOOP
      FETCH c INTO enr;
   EXIT WHEN c%NOTFOUND;
      DBMS_OUTPUT.PUT_LINE(enr.enom|| ' a le salaire ' ||  
      enr.salaire );
   END LOOP;
CLOSE c;

END;
/
