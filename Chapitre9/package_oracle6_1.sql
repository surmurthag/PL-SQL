-- package_oracle6.sql
SET  READ OFF
SET LONG 1000
SET PAGES 0
PROMPT objets en SQL

SELECT DBMS_METADATA.GET_DDL('TABLE', 'EMPLOYE') FROM DUAL;

PROMPT objets en XML

SELECT DBMS_METADATA.GET_XML('TABLE', 'EMPLOYE') FROM DUAL;
