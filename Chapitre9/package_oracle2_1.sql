-- package_oracle2.sql
BEGIN
   
   FOR i in 1..5 LOOP
      DBMS_OUTPUT.PUT_LINE('Racine carrée de '||i||' est '|| 
      sqrt(i));
   END LOOP;

END;
/
