/*------------------------------------------------------------
CREATION DES CONTRAINTES : CONSTRAINTES_BD.sql
------------------------------------------------------------*/


/* -----------------------------------------------------------
	CONTRAINTES CLE PRIMAIRE
--------------------------------------------------------------*/
ALTER TABLE EMPLOYE	
ADD CONSTRAINT PK_EMPLOYE 
PRIMARY KEY (MATRICULE)
/
ALTER TABLE DEPARTEMENT			
ADD CONSTRAINT PK_DEPARTEMENT 
PRIMARY KEY (NUMDEPT)
/
ALTER TABLE PROJET
ADD CONSTRAINT PK_PROJET 
PRIMARY KEY (NUMPROJ)
/
ALTER TABLE TRAVAILLER		
ADD CONSTRAINT PK_TRAVAILLER 
PRIMARY KEY (MATRICULE,NUMPROJ) 
/


/* -----------------------------------------------------------
	CONTRAINTES CLE ETRANGERE
--------------------------------------------------------------*/

ALTER TABLE EMPLOYE	
ADD CONSTRAINT	FK_EMPLOYE 
FOREIGN KEY (NUMDEPT)
REFERENCES DEPARTEMENT(NUMDEPT)
/
ALTER TABLE TRAVAILLER 
ADD CONSTRAINT	FK_TRAVAILLER_EMP
FOREIGN KEY (MATRICULE)	
REFERENCES EMPLOYE (MATRICULE)
/

ALTER TABLE TRAVAILLER 
ADD CONSTRAINT FK_TRAVAILLER_PROJ 
FOREIGN KEY (NUMPROJ)
REFERENCES PROJET (NUMPROJ)
/
