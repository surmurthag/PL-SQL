-- package_oracle4.sql
SET SERVEROUTPUT ON

DECLARE
   nom_rep   VARCHAR2(255) := 'REP';
   nom_fish  VARCHAR2(255) := 'fichier';

   ligne VARCHAR2(32766);
   var_fichier UTL_FILE.FILE_TYPE;

BEGIN

-- écriture dans le fichier 
   var_fichier := UTL_FILE.FOPEN(nom_rep, nom_fish, 'W');
   IF UTL_FILE.IS_OPEN(var_fichier) THEN
      FOR cur_emp IN (
                      SELECT ENOM, FONCTION 
                      FROM EMPLOYE
                     ) LOOP
         UTL_FILE.PUTF 
        (var_fichier, 'L''employe %s est %s \n',cur_emp.enom, cur_emp.fonction);
      END LOOP;
     UTL_FILE.FCLOSE(var_fichier);
   END IF;

-- lecture à partir du fichier
   var_fichier := UTL_FILE.FOPEN(nom_rep, nom_fish, 'R');
   IF UTL_FILE.IS_OPEN(var_fichier) THEN
      LOOP
         UTL_FILE.GET_LINE(var_fichier, ligne); 
         DBMS_OUTPUT.PUT_LINE(ligne);

      END LOOP;
   END IF;

EXCEPTION
WHEN NO_DATA_FOUND THEN
     DBMS_OUTPUT.PUT_LINE('fin de fichier');
     UTL_FILE.FCLOSE(var_fichier);

END;
/
