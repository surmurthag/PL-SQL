-- variable_ses.sql
VARIABLE g_x NUMBER;
VARIABLE g_y NUMBER;

DECLARE
   z NUMBER;

BEGIN

 :g_x := 10;
 :g_y := 15;
 z    := :g_x;
 :g_x := :g_y;
 :g_y := z;

END;
/
PRINT g_x;
PRINT g_y;
