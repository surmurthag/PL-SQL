-- table_audit.sql
CREATE TABLE AUDIT_TABLE
(
   NOM_TABLE VARCHAR2(30),
   DATE_OP DATE,
   UTILISATEUR VARCHAR2(30),
   ACTION VARCHAR2(30)
);
