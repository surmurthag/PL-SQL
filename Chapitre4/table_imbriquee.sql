-- table_imbriquee.sql
SET SERVEROUTPUT ON 

DECLARE
-- déclaration de table VARRAY
   TYPE tableau_type1 IS VARRAY(4) OF INTEGER;

-- déclaration d'une table imbriquée 
   TYPE tableau_type2 IS VARRAY(3) OF tableau_type1;
   t1 tableau_type1 := tableau_type1(1, 3, 5, 7);
   t2 tableau_type2 := tableau_type2(t1);

BEGIN

-- affichage de la table VARRAY
   DBMS_OUTPUT.PUT_LINE('=== Affichage tableau t1 ===');
   FOR i IN 1..4 LOOP
      DBMS_OUTPUT.PUT_LINE('t1('||i||') = '||t1(i));
   END LOOP;
   t2.EXTEND;
   t2(2) := tableau_type1(9, 11, 13, 15);

-- affichage de la table imbriquée
   DBMS_OUTPUT.PUT_LINE(chr(10)||'=== Affichage tableau t2 ===');
   FOR i IN 1..2 LOOP
       FOR j IN 1..4 LOOP
       DBMS_OUTPUT.PUT_LINE
       ('t2('||i||')('||j||') =  '||t2(i)(j));
       END LOOP;
   END LOOP;

END;
/
