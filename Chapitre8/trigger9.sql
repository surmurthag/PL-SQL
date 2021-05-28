-- trigger9.sql
DROP TABLE JOURNAL;
CREATE TABLE JOURNAL
       (
         DATE_LOGON DATE,
         UTEUR_SE VARCHAR2(30),
         UTEUR_BD VARCHAR2(30),
         NOM_BD VARCHAR2(30),
         SERVEUR VARCHAR2(30)
       );   

CREATE OR REPLACE TRIGGER enreg_journal
AFTER LOGON ON DATABASE
DECLARE 
   vuteur_se VARCHAR2(30);
   vuteur_bd VARCHAR2(30);
   vnom_bd VARCHAR2(30);
   vserv VARCHAR2(30);

BEGIN

   SELECT 
          SYS_CONTEXT('USERENV', 'OS_USER'),
          SYS_CONTEXT('USERENV', 'SESSION_USER'),
          SYS_CONTEXT('USERENV', 'DB_NAME'),
          SYS_CONTEXT('USERENV', 'HOST')
   INTO
          vuteur_se,
          vuteur_bd,
          vnom_bd,
          vserv
   FROM DUAL;

   INSERT INTO JOURNAL
   VALUES (SYSDATE, vuteur_se, vuteur_bd, vnom_bd, vserv);

END enreg_journal;
/
