-- procedure9.sql
SET SERVEROUTPUT ON

DECLARE
   n NUMBER := 111;

   PROCEDURE proced
               (
                 para1 IN NUMBER,
                 para2 IN OUT NUMBER,
                 para3 IN OUT NOCOPY NUMBER
               ) IS

   BEGIN

     para2 := 222;
     DBMS_OUTPUT.put_line
     ('affichage procedure para1 ' || para1);      
     para3 := 333;    
     DBMS_OUTPUT.put_line
     ('affichage procedure para1 ' || para1); 
  
   END;

BEGIN

   proced(n, n, n);
   DBMS_OUTPUT.put_line('affichage bloc principal n '|| n);

END;
/
