-- dossier.sql
-- cr�ation du r�pertoire
CREATE OR REPLACE DIRECTORY rep AS 'D :\REP';

-- autorisation de privil�ges
GRANT READ, WRITE ON DIRECTORY rep TO PUBLIC;
