-- dossier.sql
-- création du répertoire
CREATE OR REPLACE DIRECTORY rep AS 'D :\REP';

-- autorisation de privilèges
GRANT READ, WRITE ON DIRECTORY rep TO PUBLIC;
