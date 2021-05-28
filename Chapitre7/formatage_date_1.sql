-- formatage_date.sql
CREATE OR REPLACE FUNCTION formatage_date
                          ( 
                            pdate IN DATE,
                            psep  IN CHAR
                          )
RETURN VARCHAR2
IS
   vdate VARCHAR2(30);

BEGIN

   vdate := TO_CHAR(pdate,'dd') || psep || TO_CHAR(pdate,'mm') || 
            psep || TO_CHAR(pdate,'yy');

RETURN(vdate);

END;
/
